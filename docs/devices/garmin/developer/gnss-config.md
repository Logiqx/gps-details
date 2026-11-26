## Garmin Developer Tips - GNSS Configuration

### Background

Choose the best possible GNSS configuration at runtime using `Position.hasConfigurationSupport.`

- `CONFIGURATION_SAT_IQ_MAX_ACCURACY` (258)
- `CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1_L5` (6)
- `CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1` (5)
- `CONFIGURATION_GPS_GALILEO` (3)

Do NOT use configurations that can degrade GNSS performance:

- `CONFIGURATION_SAT_IQ` or `CONFIGURATION_SAT_IQ_NORMAL` (255)
- `CONFIGURATION_SAT_IQ_EXTENDED_BATTERY` (256)
- `CONFIGURATION_SAT_IQ_MAX_BATTERY` (257)

The following GNSS configurations are essentially redundant:

- `CONFIGURATION_GPS_BEIDOU` (4)
- `CONFIGURATION_GPS_GLONASS` (2)
- `CONFIGURATION_GPS` (1)

See [Toybox.Position.Configuration](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#Configuration-module) for GNSS configurations, and [Garmin Power Modes](https://logiqx.github.io/gps-details/devices/garmin/power/) for further details.



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

    // Use configuration parameter for Connect IQ 3.3.6 and later (e.g. fēnix 6 + vívoactive 4)
    if (Position has :hasConfigurationSupport) {
        // GPS L1 + L5, GLONASS, Galileo E1 + E5a, and BeiDou B1I + B2a (e.g. fēnix 9 series)
        if (Position has :CONFIGURATION_SAT_IQ_MAX_ACCURACY) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_SAT_IQ_MAX_ACCURACY)) {
            options[:configuration] = Position.CONFIGURATION_SAT_IQ_MAX_ACCURACY;
        // GPS L1 + L5, GLONASS, Galileo E1 + E5a, and BeiDou B1I + B2a (e.g. fēnix 7 Pro + Forerunner 255)
        } else if (Position has :CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1_L5) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1_L5)) {
            options[:configuration] = Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1_L5;
        // GPS L1, GLONASS, Galileo E1, and BeiDou B1I (e.g. fēnix 7 + vívoactive 5)
        } else if (Position has :CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1)) {
            options[:configuration] = Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1;
        // GPS L1 and Galileo E1 (e.g. fēnix 6 + vívoactive 4) - May be skipped in the simulator
        } else if (Position has :CONFIGURATION_GPS_GALILEO) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GALILEO)) {
            options[:configuration] = Position.CONFIGURATION_GPS_GALILEO;
        }
        started = startUpdates(options);
    }
    // Use constellations parameter for Connect IQ 3.2.0 to 3.3.5 (e.g. fēnix 5 Plus + vívoactive 3 Music)
    else {
        // GPS L1 and Galileo E1
        if (Position has :CONSTELLATION_GALILEO {
            options[:constellations] = [ Position.CONSTELLATION_GPS, Position.CONSTELLATION_GALILEO ];
        }
        // GPS L1 and GLONASS - Potentially redundant
        else if (Position has :CONSTELLATION_GLONASS) {
            options[:constellations] = [ Position.CONSTELLATION_GPS, Position.CONSTELLATION_GLONASS ];
        }
        started = startUpdates(options);
    }
    
    // Use standard GPS with versions prior to Connect IQ 3.2.0 (e.g. fēnix 5 + vívoactive 3)
    if (!started) {
        options = Position.LOCATION_CONTINUOUS;
        started = startUpdates(options);
    }

    return started;            
}
```



### Test Cases

Supported API levels can be found on the developer page that lists [compatible devices](https://developer.garmin.com/connect-iq/compatible-devices/).

These test cases show the expected GNSS configurations based on the example code.



#### API Level 3.1

There is no mechanism to choose the GNSS configuration with API level 3.1.

Note: Galileo and GLONASS are supported by these watches, but Connect IQ apps such as APPro Windsurf will be limited to standard GPS.

| Watch          | GNSS Chipset    | Config |
| -------------- | --------------- | :----: |
| fēnix 5        | MediaTek MT3333 |  GPS   |
| Forerunner 645 | MediaTek MT3333 |  GPS   |
| vívoactive 3   | MediaTek MT3333 |  GPS   |



#### API Level 3.2

Use the `constellations` parameter for API level 3.2.

Note: API level 3.2 is rare according to the developer page that lists [compatible devices](https://developer.garmin.com/connect-iq/compatible-devices/).

| Watch                | GNSS Chipset    |    Config     |
| -------------------- | --------------- | :-----------: |
| Forerunner 645 Music | MediaTek MT3333 | GPS + Galileo |
| vívoactive 3 Music   | MediaTek MT3333 | GPS + Galileo |



#### API Level 3.3

Use the `constellations` parameter for Connect IQ 3.3.0 to 3.3.5, or the configuration parameter for API level 3.3.6.

Note: The [`configuration`](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#Configuration-module) parameter is the only new feature of API level 3.3.6, according to [Google](https://www.google.com/search?q=%22API+Level+3.3.6%22+site%3Adeveloper.garmin.com).

| Watch          | GNSS Chipset    |    Config     |
| -------------- | --------------- | :-----------: |
| fēnix 5 Plus   | MediaTek MT3333 | GPS + Galileo |
| Forerunner 245 | Sony CXD5603GF  | GPS + Galileo |
| vívoactive 4   | Sony CXD5603GF  | GPS + Galileo |



#### API Level 3.4

Use the [`configuration`](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#Configuration-module) parameter for API level 3.4.

| Watch         | GNSS Chipset   |    Config     |
| ------------- | -------------- | :-----------: |
| fēnix 6       | Sony CXD5603GF | GPS + Galileo |
| Forerunner 55 | Sony CXD56xxxx | GPS + Galileo |
| Instinct 2    | Sony CXD56xxxx | GPS + Galileo |
| Instinct 2X   | Airoha AG3335M |  Multi-Band   |

Note: The GPS + Galileo configuration may be skipped in the simulator, resulting in GPS + BeiDou being chosen.



#### API Level 5.0

Use the [`configuration`](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#Configuration-module) parameter for API level 5.0.

Note: The majority of watches that supported API level 5.0 now support API level 5.1, except some Venu models + derivatives (e.g. D2 Air X10).



#### API Level 5.1

Use the [`configuration`](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#Configuration-module) parameter for API level 5.1.

| Watch          | GNSS Chipset    |   Config    |
| -------------- | --------------- | :---------: |
| fēnix 7 Pro    | Airoha AG3335M  | Multi-Band  |
| Forerunner 255 | Airoha AG3335M  | Multi-Band  |
| vívoactive 5   | Airoha AG3335MN | All Systems |

Note: The fēnix 7 Pro may skip multi-band / all systems in the simulator, resulting in GPS + Galileo being chosen.

