# Checking if a Connection Exists 

```
AT+CIPSTATUS

STATUS:<stat>
+CIPSTATUS:<link ID>,<type>,<remote IP>,<remote port>,<local port>,<tetype>
```

Parameters:

    <stat>: status of the ESP32 Station interface.
        0: The ESP32 station is inactive.
        1: The ESP32 station is idle.
        2: The ESP32 Station is connected to an AP and its IP is obtained.
        3: The ESP32 Station has created a TCP or UDP transmission.
        4: The TCP or UDP transmission of ESP32 Station is disconnected.
        5: The ESP32 Station does NOT connect to an AP.
    <link ID>: ID of the connection (0~4), used for multiple connections.
    <type>: string parameter, "TCP" or "UDP".
    <remote IP>: string parameter indicating the remote IP address.
    <remote port>: the remote port number.
    <local port>: ESP32 local port number.
    <tetype>:
        0: ESP32 runs as a client.
        1: ESP32 runs as a server.


To check if has network

```
AT+HTTPCLIENT=1,0,"http://httpbin.org/get","httpbin.org","/get",1
OK
```

Or `ERROR` if not connected.



# Connecting to WIFI on ESP32 (Username/Password)

```
// set to station mode
AT+CWMODE=1 
OK
//

// Connect to WIFI
AT+CWJAP="Singletopia","budapest-dander-shortage"
WIFI CONNECTED
WIFI GOT IP
OK

// Disconnect from WIFI
AT+CWQAP
OK
```

# Connecting to WIFI on ESP32 (WPA)

```
AT+CWMODE=1
AT+WPS=1
```

# Connecting to MQTT on ESP32 

Before connecting to MQTT, we must verify we have a connection to an access point. If we DO NOT have a connection to an access point we must go into a "setup" mode. 

If we get a failure connecting to MQTT on the ESP32 we assume we have no internet access. This isn't a "setup" mode, but a "connecting" mode. 

We can connect two ways:
```
-- base config
AT+MQTTUSERCFG=0,2,"smartbase","johnlsingleton","9250044fcba341b39098f90324bd456c",0,0,""
OK
-- connect to broker
AT+MQTTCONN=0,"io.adafruit.com",8883,1
OK
```

OR:

```
-- base config
AT+MQTTUSERCFG=0,2,"","","",0,0,""
OK
-- set the client id
AT+MQTTCLIENTID=0,"smartbase"
OK
-- set the username 
AT+MQTTUSERNAME=0,"johnlsingleton"
OK

-- set the password
AT+MQTTPASSWORD=0,"9250044fcba341b39098f90324bd456c"
OK

-- connect to broker
AT+MQTTCONN=0,"io.adafruit.com",8883,1
OK
```

Then we connect to a queue with:

```
AT+MQTTSUB=0,"johnlsingleton/feeds/prototype/bed_status",0
OK
```

Messages look like this:

```
+MQTTSUBRECV:0,"johnlsingleton/feeds/prototype/bed_status",6,headup
```

The two important parameters are the `6` and the `headup`. Valid commands are `HEADUP`, `HEADDOWN`, `FEETUP`, and `FEETDOWN`.

Anything else should be ignored. Splitting on the `,` character we should look at the 4th element. 