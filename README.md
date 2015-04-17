# esp8266-UdpTemp
Reads #ds18b20s and broadcasts the ID and Temperature via UDP using the #esp8266 SDK.

It will read up to 20 DS18B20s on the bus (or change MAX_DEVICES)
It will deep sleep (30uA current) for 2 minutes (or change SLEEP_TIME)
It will use 74880 as the baud rate (or change MYBAUD)
It will broadcast on the local net on UDP port 53535 (or change BROADCAST_PORT)

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
