/*
 * osready.c
 *
 *  Created on: Apr 10, 2015
 *      Author: kevinu
 *
 *      Calls back when wifi connects or fails
 *
 */

#include <ets_sys.h>
#include <osapi.h>
#include <os_type.h>
#include <gpio.h>
#include "driver/uart.h"
#include "user_interface.h"
#include "espconn.h"

extern int ets_uart_printf(const char *fmt, ...);
LOCAL os_timer_t wifi_timer;
LOCAL void (*readyfunc)(int ready);
LOCAL int verbose = 0;

// the action takes place here
// called once per second to see if the wifi is connected
//
LOCAL void ICACHE_FLASH_ATTR checkready(void *arg)
{
    LOCAL struct ip_info ipconfig;
    static tries = 10;
    if (tries-- < 1)
    {
    	os_timer_disarm(&wifi_timer);
    	if (verbose) ets_uart_printf("WiFi connecting timeout\n");
    	if (readyfunc) (*readyfunc)(-1);
    }
    int s;
	switch((s = wifi_station_get_connect_status()))
	{
    	case STATION_GOT_IP:
            wifi_get_ip_info(STATION_IF, &ipconfig);
            if( ipconfig.ip.addr != 0) {
            	if (verbose) ets_uart_printf("WiFi connected\n");
            	if (verbose) ets_uart_printf("IP: %d.%d.%d.%d\n",
            		                 IP2STR(&ipconfig.ip));
            	os_timer_disarm(&wifi_timer);
            	if (readyfunc) (*readyfunc)(s);
            }
			break;
		case STATION_WRONG_PASSWORD:
			if (verbose) ets_uart_printf("WiFi connecting error, wrong password\n");
        	if (readyfunc) (*readyfunc)(s);
			break;
		case STATION_NO_AP_FOUND:
			if (verbose) ets_uart_printf("WiFi connecting error, ap not found\n");
        	if (readyfunc) (*readyfunc)(s);
			break;
		case STATION_CONNECT_FAIL:
			if (verbose) ets_uart_printf("WiFi connecting fail\n");
        	if (readyfunc) (*readyfunc)(s);
			break;
		default:
			if (verbose) ets_uart_printf("WiFi connecting...%d...\n",s);
	}

}

// osready
// starts checking to see if the wifi is connected
// arg1 callback [ void readyfunc(int success) ]
// arg2 verbose/silent true/false
void osready(void (*rf)(int ready),int v)
{
	readyfunc = rf;
	verbose = v;
	os_timer_disarm(&wifi_timer);
	os_timer_setfn(&wifi_timer, (os_timer_func_t *)checkready, (void *)0);
	os_timer_arm(&wifi_timer, 1000, 1);

}

// osreadystop
// enough already!
void osreadystop()
{
	os_timer_disarm(&wifi_timer);
}
