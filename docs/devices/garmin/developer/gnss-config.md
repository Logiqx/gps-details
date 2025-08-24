## Garmin Developer Tips - GNSS Configuration

### Example Code

Use of standard GPS is not recommended on modern watches; all systems or all + multi-band are advisable.

Here is some example code to select the suitable GNSS constellations via [Position.enableLocationEvents](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#enableLocationEvents-instance_function).

```c
function startUpdates(options) {
    // Attempt to enable location events using the provided GNSS configuration
    var started = false;

    try {
        // This can fail with InvalidValueException if the GNSS combination is not supported
        Position.enableLocationEvents(options, method(:onUpdate));
        started = true;
    }
    catch (error) {
        System.println(error);
    }

    return started;
}

function startLocationEvents() {
    // Enable location events using the optimal GNSS configuration
    var started = false;

    // Enable continuous location tracking
    var options = {
        :acquisitionType => Position.LOCATION_CONTINUOUS
    };

    // Use configuration parameter for Connect IQ 3.3.6 and later (e.g. fēnix 6)
    if (Position has :hasConfigurationSupport) {
        // GPS L1 + L5, GLONASS, Galileo E1 + E5a, and BeiDou B1I + B2a (e.g. Forerunner 255)
        if (Position has :CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1_L5) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1_L5)) {
            options[:configuration] = Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1_L5;
        // GPS L1, GLONASS, Galileo E1, and BeiDou B1I (e.g. vívoactive 5)
        } else if (Position has :CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1)) {
            options[:configuration] = Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1;
        // GPS L1 and Galileo E1 - May be skipped in the simulator (e.g. fēnix 6)
        } else if (Position has :CONFIGURATION_GPS_GALILEO) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GALILEO)) {
            options[:configuration] = Position.CONFIGURATION_GPS_GALILEO;
        // GPS L1 and BeiDou B1I
        } else if (Position has :CONFIGURATION_GPS_BEIDOU) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_BEIDOU)) {
            options[:configuration] = Position.CONFIGURATION_GPS_BEIDOU;
        // GPS L1 and GLONASS
        } else if (Position has :CONFIGURATION_GPS_GLONASS) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GLONASS)) {
            options[:configuration] = Position.CONFIGURATION_GPS_GLONASS;
        // GPS L1 - Theoretically redundant
        } else if (Position has :CONFIGURATION_GPS) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS)) {
            options[:configuration] = Position.CONFIGURATION_GPS;
        }
        started = startUpdates(options)
    }
    // Use constellations parameter for Connect IQ 3.2.0 to 3.3.5 (e.g. vívoactive 4)
    else {
        // GPS L1 and Galileo E1
        if (Position has :CONSTELLATION_GALILEO {
            options[:constellations] = [ Position.CONSTELLATION_GPS, Position.CONSTELLATION_GALILEO ];
        }
        // GPS L1 and GLONASS
        else if (Position has :CONSTELLATION_GLONASS) {
            options[:constellations] = [ Position.CONSTELLATION_GPS, Position.CONSTELLATION_GLONASS ];
        }
        started = startUpdates(options)
    }
    
    // Use standard GPS with versions prior to Connect IQ 3.2.0
    if (!started) {
        options = Position.LOCATION_CONTINUOUS;
        started = startUpdates(options)
    }

    return started;            
}
```



### Test Cases

Supported API levels can be found on the developer page that lists [compatible devices](https://developer.garmin.com/connect-iq/compatible-devices/).

These test cases show the expected order of GNSS configurations for consideration by the above code.



#### API Level 3.1

There is no mechanism to choose the GNSS configuration with API level 3.1.

Note: Galileo and GLONASS are supported by these watches, but Connect IQ apps such as APPro Windsurf will be limited to standard GPS.

| Watch          | GNSS Chipset    | Config |
| -------------- | --------------- | :----: |
| fēnix 5        | MediaTek MT3333 |  GPS   |
| Forerunner 645 | MediaTek MT3333 |  GPS   |
| vívoactive 3   | MediaTek MT3333 |  GPS   |



#### API Level 3.2

Use the constellations parameter for API level 3.2.

Note: API level 3.2 is rare according to the developer page that lists [compatible devices](https://developer.garmin.com/connect-iq/compatible-devices/).

| Watch                | GNSS Chipset    |   Config 1    |   Config 2    |
| -------------------- | --------------- | :-----------: | :-----------: |
| Forerunner 645 Music | MediaTek MT3333 | GPS + Galileo | GPS + GLONASS |
| vívoactive 3 Music   | MediaTek MT3333 | GPS + Galileo | GPS + GLONASS |



#### API Level 3.3

Use the constellations parameter for Connect IQ 3.3.0 to 3.3.5, or the configuration parameter for API level 3.3.6.

Note: The [configuration](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#Configuration-module) parameter is the only new feature of API level 3.3.6, according to [Google](https://www.google.com/search?q=%22API+Level+3.3.6%22+site%3Adeveloper.garmin.com).

| Watch          | GNSS Chipset    |   Config 1    |   Config 2    |
| -------------- | --------------- | :-----------: | :-----------: |
| fēnix 5 Plus   | MediaTek MT3333 | GPS + Galileo | GPS + GLONASS |
| Forerunner 245 | Sony CXD5603GF  | GPS + Galileo | GPS + GLONASS |
| vívoactive 4   | Sony CXD5603GF  | GPS + Galileo | GPS + GLONASS |



#### API Level 3.4

Use the [configuration](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#Configuration-module) parameter for API level 3.4.

| Watch         | GNSS Chipset   |   Config 1    |   Config 2   |   Config 3    |
| ------------- | -------------- | :-----------: | :----------: | :-----------: |
| fēnix 6       | Sony CXD5603GF | GPS + Galileo | GPS + BeiDou | GPS + GLONASS |
| Forerunner 55 | Sony CXD56xxxx | GPS + Galileo | GPS + BeiDou | GPS + GLONASS |
| Instinct 2    | Sony CXD56xxxx | GPS + Galileo | GPS + BeiDou | GPS + GLONASS |
| Instinct 2X   | Airoha AG3335M |  Multi-Band   | All Systems  |       -       |

Note: The GPS + Galileo configuration may be skipped in the simulator, resulting in GPS + BeiDou being chosen.



#### API Level 5.0

Use the GNSS [configuration](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#Configuration-module) parameter for API level 5.0.

Note: The majority of watches that supported API level 5.0 now support API level 5.1, except some Venu models + derivatives (e.g. D2 Air X10).



#### API Level 5.1

Use the [configuration](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#Configuration-module) parameter for API level 5.0.

| Watch          | GNSS Chipset    |  Config 1   |  Config 2   |
| -------------- | --------------- | :---------: | :---------: |
| fēnix 7 Pro    | Airoha AG3335M  | Multi-Band  | All Systems |
| Forerunner 255 | Airoha AG3335M  | Multi-Band  | All Systems |
| vívoactive 5   | Airoha AG3335MN | All Systems |      -      |

Note: The fēnix 7 Pro may skip multi-band / all systems in the simulator, resulting in GPS + Galileo being chosen.

