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

    // Use configuration parameter for ConnectIQ 3.3.6 and later (e.g. fēnix 6)
    if (Position has :hasConfigurationSupport) {
        // GPS L1 + L5, GLONASS, Galileo E1 + E5a, and BeiDou B1I + B2a (e.g. fēnix 7 Pro)
        if (Position has :CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1_L5) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1_L5)) {
            options[:configuration] = Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1_L5;
        // GPS L1, GLONASS, Galileo E1, and BeiDou B1I (e.g. fēnix 7)
        } else if (Position has :CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1)) {
            options[:configuration] = Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1;
        // GPS L1 and Galileo E1 - May be skipped in the simulator (e.g. fēnix 6)
        } else if (Position has :CONFIGURATION_GPS_GALILEO) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GALILEO)) {
            options[:configuration] = Position.CONFIGURATION_GPS_GALILEO;
        // GPS L1 and BeiDou B1I - May be used in the simulator (e.g. fēnix 6)
        } else if (Position has :CONFIGURATION_GPS_BEIDOU) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_BEIDOU)) {
            options[:configuration] = Position.CONFIGURATION_GPS_BEIDOU;
        // GPS L1 and GLONASS - Applicability TBC
        } else if (Position has :CONFIGURATION_GPS_GLONASS) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GLONASS)) {
            options[:configuration] = Position.CONFIGURATION_GPS_GLONASS;
        // GPS L1 - Theoretically redundant on watches supporting ConnectIQ 3.3.6
        } else if (Position has :CONFIGURATION_GPS) &&
              (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS)) {
            options[:configuration] = Position.CONFIGURATION_GPS;
        }
        started = startUpdates(options)
    }
    // Use constellations parameter for ConnectIQ 3.2.0 to 3.3.5 (e.g. vívoactive 4)
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
    
    // Use standard GPS with versions prior to ConnectIQ 3.2.0
    if (!started) {
        options = Position.LOCATION_CONTINUOUS;
        started = startUpdates(options)
    }

    return started;            
}
```

