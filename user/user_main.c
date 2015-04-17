/*
	Read DS18B20 and broadcast the result via UDP

	This includes a very very stupid configuration routine if the wifi doesn't connect.
	Stupid, but currently effective.

	FYI I like the baud rate 74880 (bootloader rate, so i don't get garbage), change it as you wish

	Consider this thing pre-alpha in its current form

*/

#include <ets_sys.h>
#include <osapi.h>
#include <os_type.h>
#include <gpio.h>
#include <mem.h>
#include "driver/uart.h"
#include "user_interface.h"
#include "espconn.h"
#include "driver/ds18b20.h"

#define SLEEP_TIME 120 * 1000 /* milliseconds */
#define MYBAUD BIT_RATE_74880
#define BROADCAST_PORT	53535 /* UDP Port used to broadcast the temperatures on */
#define MAX_DEVICES 20

extern int ets_uart_printf(const char *fmt, ...);
extern int ets_sprintf(char *str, const char *fmt, ...);
#define sleepms(x) os_delay_us(x*1000);

uint8_t devices[MAX_DEVICES][8];
int ndevices = 0;
int curdevice = 0;
char *rline = NULL;
int rstate = 0;
char ap[50];
char pass[50];

static os_timer_t ds18b20_timer;


static struct espconn bcconn;


void ICACHE_FLASH_ATTR ds18b20p2(void *arg);

void ICACHE_FLASH_ATTR sleeper(void *arg)
{
	ets_uart_printf("deep_sleep\n");
	system_deep_sleep((SLEEP_TIME-1000)*1000);
}


//  ds18b20 part 1
//  initiate a conversion
void ICACHE_FLASH_ATTR ds18b20p1(void *arg)
{


	os_timer_disarm(&ds18b20_timer);

	if (ndevices < 1)
	{
		ets_uart_printf("no devices found\n");
		os_timer_setfn(&ds18b20_timer, (os_timer_func_t *)sleeper, (void *)0);
		os_timer_arm(&ds18b20_timer, 1000, 0);
		return;
	}


	// perform the conversion
	reset();
	select(devices[curdevice]);

	write(DS1820_CONVERT_T, 1); // perform temperature conversion

	// tell me when its been 1 second, please
	os_timer_setfn(&ds18b20_timer, (os_timer_func_t *)ds18b20p2, (void *)0);
	os_timer_arm(&ds18b20_timer, 1000, 0);

}

// ds18b20 part 2
// conversion should be done, get the result
// report it
// check for next device, call part 1 again
// or sleep if done
void ICACHE_FLASH_ATTR ds18b20p2(void *arg)
{
	int i;
	int tries = 5;
	uint8_t data[12];
	os_timer_disarm(&ds18b20_timer);
	while(tries > 0)
	{
		//ets_uart_printf("Scratchpad: ");
		reset();
		select(devices[curdevice]);
		write(DS1820_READ_SCRATCHPAD, 0); // read scratchpad

		for(i = 0; i < 9; i++)
		{
			data[i] = read();
			//ets_uart_printf("%2x ", data[i]);
		}
		//ets_uart_printf("\n");
		//ets_uart_printf("crc calc=%02x read=%02x\n",crc8(data,8),data[8]);
		if(crc8(data,8) == data[8]) break;
		tries--;
	}

	int HighByte, LowByte, TReading, SignBit, Tc_100, Whole, Fract;
	LowByte = data[0];
	HighByte = data[1];
	TReading = (HighByte << 8) + LowByte;
	SignBit = TReading & 0x8000;  // test most sig bit
	if (SignBit) // negative
		TReading = (TReading ^ 0xffff) + 1; // 2's comp

	Whole = TReading >> 4;  // separate off the whole and fractional portions
	Fract = (TReading & 0xf) * 100 / 16;

	uint8_t *addr = devices[curdevice];
	char out[50];
	ets_sprintf(out,"%02x%02x%02x%02x%02x%02x%02x%02x:%c%d.%d",
					addr[0], addr[1], addr[2], addr[3], addr[4], addr[5], addr[6], addr[7],
					SignBit ? '-' : '+', Whole, Fract < 10 ? 0 : Fract);

	espconn_sent(&bcconn, out,strlen(out));
	ets_uart_printf("%s\n",out);

	// setup for next device
	os_timer_setfn(&ds18b20_timer, (os_timer_func_t *)ds18b20p1, (void *)0);
	os_timer_arm(&ds18b20_timer, 100, 0);

	curdevice++;
	if (curdevice >= ndevices)
	{
		curdevice = 0;
		// no more devices, go to sleep...
		// ... but after a second (ensures the last UDP packet is sent before shutdown)
		os_timer_disarm(&ds18b20_timer);
		os_timer_setfn(&ds18b20_timer, (os_timer_func_t *)sleeper, (void *)0);
		os_timer_arm(&ds18b20_timer, 1000, 0);
	}
}

// osready driver is told to inform us when wifi connects (or fails) here.
// so this is the "real" start of the program
void ICACHE_FLASH_ATTR oscomplete(int ready)
{
	if (ready != STATION_GOT_IP)
	{
		ets_uart_printf("wifi connect failed -- %d\n",ready);
		osreadystop();
		// so we'll just go to sleep and try later
		os_timer_disarm(&ds18b20_timer);
		os_timer_setfn(&ds18b20_timer, (os_timer_func_t *)sleeper, (void *)0);
		os_timer_arm(&ds18b20_timer, 200, 0);
		return;
	}
	ets_uart_printf("ready\n");
	struct ip_info ipconfig;
    wifi_get_ip_info(STATION_IF, &ipconfig);

    // init 18b20 driver
	ds_init();

	ndevices = 0;
	int r;
	uint8_t addr[8];

	// find the 18b20s on the bus
	while( (r = ds_search(addr)) )
	{
		if(crc8(addr, 7) != addr[7]) continue; // crc mismatch -- bad device
		ets_uart_printf("Found:%02x%02x%02x%02x%02x%02x%02x%02x\n",
				addr[0], addr[1], addr[2], addr[3], addr[4], addr[5], addr[6], addr[7]);
		if (addr[0] == 0x10 || addr[0] == 0x28)
		{
			memcpy(devices[ndevices],addr,8);
			ndevices++;
			if (ndevices >= MAX_DEVICES) break;
		}
	}

	// figure out the broadcast address
	struct ip_addr bcast;
	bcast = ipconfig.ip;
	bcast.addr |= ~ipconfig.netmask.addr;
	ets_uart_printf("bcast: %d.%d.%d.%d\n",IP2STR(&bcast));

	// set up the udp connection
	static esp_udp bcudp;
	bcconn.type = ESPCONN_UDP;
	bcconn.state = ESPCONN_NONE;
	bcconn.proto.udp = &bcudp;
	bcudp.remote_port = BROADCAST_PORT;
	bcudp.local_port = BROADCAST_PORT;
	memcpy(bcudp.remote_ip,&bcast,4);
	bcconn.reverse = NULL;
	r = espconn_create(&bcconn);
	ets_uart_printf("espconn_create result = %d\n",r);

	// start reading devices...
	// ... i'm handing off with a timer, could have called directly
	os_timer_disarm(&ds18b20_timer);
	os_timer_setfn(&ds18b20_timer, (os_timer_func_t *)ds18b20p1, (void *)0);
	os_timer_arm(&ds18b20_timer, 100, 0);

}

//
// Very Stupid configuration method
// State driven: get lines, give prompts, gather ssid and password
// and set the wifi config.. good thing you only need to do it once
//
static void gotline(char *line)
{
	ets_uart_printf("got line %s\n",line);
	if (rstate == 0)
	{
		rstate = 2;
		osreadystop();
		ets_uart_printf("press return again to configure wifi\n");
		return;
	}
	switch(rstate)
	{
	case 2:
		ets_uart_printf("enter ssid:");
		rstate = 3;
		break;
	case 3:
		strcpy(ap,line);
		ets_uart_printf("enter pass:");
		rstate = 4;
		break;
	case 4:
		rstate = 0;
		strcpy(pass,line);
		struct station_config sta_conf;
		os_strncpy((char*)sta_conf.ssid, ap, sizeof sta_conf.ssid);

		sta_conf.password[0] = 0x0;
		if (pass != NULL) {
			os_strncpy((char*)&sta_conf.password, pass, 32);
		}
		ets_uart_printf("setting wifi config: %s %s\n",ap,pass);
		wifi_station_disconnect();
		wifi_set_opmode(STATION_MODE);
		wifi_station_set_config(&sta_conf);
		wifi_station_connect();
		osready(oscomplete,1);
	}
}


// captures uart received events
// bundles them into lines and calls "gotline"
static void  task_uart(os_event_t *evt)
{
	int c = evt->par;
	static char buff[80];
	static char *bufp = buff;
	if (c == 13 || c == 10)
	{
		ets_uart_printf("\n");
		gotline(buff);
		memset(buff,0,sizeof(buff));
		bufp = buff;
		return;
	}
	if (c == 8 || c == 0x7f)
	{
		if (bufp <= buff) return;
		bufp--;
		*bufp = 0;
		ets_uart_printf("\b \b");
		return;
	}
	*bufp++ = c;
	ets_uart_printf("%c",c);
}


// init!
void ICACHE_FLASH_ATTR user_init(void)
{

	// Configure the UART
	uart_init(MYBAUD, MYBAUD);

	sleepms(200);
	ets_uart_printf("started\n");
	ets_uart_printf("press return to configure wifi.\n");
	ets_uart_printf("unless you've configured it once already.\n");

	os_event_t *queue = (os_event_t *)os_malloc(sizeof(os_event_t) * 32);
	system_os_task(task_uart, 1, queue, 32);

	// osready is in driver/osready.c
	// its a timer that goes until wifi connects or fails
	// calls oscomplete when ready
	// arg2 =1 = verbose
	osready(oscomplete,1);
}
