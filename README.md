# esp8266-UdpTemp
Reads #ds18b20s and broadcasts the ID and Temperature via UDP using the #esp8266 SDK.

* It will read up to 20 DS18B20s on the bus (or change MAX_DEVICES)
* It will deep sleep (30uA current) for 2 minutes (or change SLEEP_TIME)  For lowest power, I also removed the resistor on the power LED
* It will broadcast on the local net on UDP port 53535 (or change BROADCAST_PORT)
* It will use 74880 as the baud rate (bootloader baudrate) (or change MYBAUD) Note that FTDI based serial dongles will just work by specifying 74880, if your terminal program allows it.  No more garbage on boot!

You *MUST* connect XPD_DCDC (chip pin #8) to EXT_RSTB (reset) in order for 
the device to recover from deep sleep mode.

Typical serial output (every 2 minutes)
```
started
press return to configure wifi.
unless you've configured it once already.
WiFi connecting...1...
WiFi connected
IP: 172.30.1.54
ready
Found:28ae3d1b03000071
bcast: 172.30.1.255
espconn_create result = 0
28ae3d1b03000071:+29.62
deep_sleep
```

Example UDP packet dump
```
19:49:52.212203 IP 172.30.1.54.53535 > 172.30.1.255.53535: UDP, length 23
        0x0000:  4500 0033 0003 0000 ff11 6045 ac1e 0136  E..3......`E...6
        0x0010:  ac1e 01ff d11f d11f 001f 773e 3238 6165  ..........w>28ae
        0x0020:  3364 3162 3033 3030 3030 3731 3a2b 3237  3d1b03000071:+27
        0x0030:  2e35 30                                  .50
```
The actual UDP data payload is
```
28ae3d1b03000071:+29.62
```

Very Very stupid configuration example

```
started
press return to configure wifi.
unless you've configured it once already.
```
(i pressed return)
```
got line 
press return again to configure wifi

got line 
enter ssid:YOURSSID
got line YOURSSID
enter pass:YOURPASSWORD
got line YOURPASSWORD
setting wifi config: 
WiFi connecting...1...
WiFi connecting...1...
WiFi connecting...1...
WiFi connected
IP: 172.30.1.54
ready
Found:28ae3d1b03000071
bcast: 172.30.1.255
espconn_create result = 0
28ae3d1b03000071:+28.0
deep_sleep
```
