## Garmin Developer Tips

### Enabling Location Events

How to use satellite constellations other than the default (CONSTELLATION_GPS). 

```c
function startUpdates(options) {
    // Attempt to enable location events using the provided GNSS configuration
    var started = false;

    try {
        // This can fail with InvalidValueException if combination is not supported by device
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

    // Use configuration parameter for ConnectIQ 3.3.6 and later (e.g. Fenix 5)
    if (Position has :hasConfigurationSupport) {
        // GPS L1, GLONASS, GALILEO L1, BEIDOU L1 (e.g. Fenix 7)
        if (Position has :CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1) &&
           (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1  )) {
            options[:configuration] = Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1;
        // GPS L1 and GALILEO L1 - May be skipped (e.g. Fenix 6 in the simulator)
        } else if (Position has :CONFIGURATION_GPS_GALILEO) &&
                  (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GALILEO)) {
            options[:configuration] = Position.CONFIGURATION_GPS_GALILEO;
        // GPS L1 and BEIDOU L1 - Surprisingly useful (e.g. Fenix 6 in the simulator)
        } else if (Position has :CONFIGURATION_GPS_BEIDOU) &&
                  (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_BEIDOU)) {
            options[:configuration] = Position.CONFIGURATION_GPS_BEIDOU;
        // GPS L1 and GLONASS - (e.g. Fenix 5)
        } else if (Position has :CONFIGURATION_GPS_GLONASS) &&
                  (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GLONASS)) {
            options[:configuration] = Position.CONFIGURATION_GPS_GLONASS;
        // GPS L1
        } else if (Position has :CONFIGURATION_GPS) &&
                  (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS)) {
            options[:configuration] = Position.CONFIGURATION_GPS;
        }
        started = startUpdates(options)
    }

    // Use constellations parameter for ConnectIQ 3.2.0 and later (e.g. vivoactive 3 music)
    if (!started && Position has :CONSTELLATION_GALILEO {
        options[:constellations] = [ Position.CONSTELLATION_GPS, Position.CONSTELLATION_GALILEO ];
        started = startUpdates(options)
    }

    // Use constellations parameter for ConnectIQ 3.2.0 and later
    if (!started && Position has :CONSTELLATION_GLONASS) {
        options[:constellations] = [ Position.CONSTELLATION_GPS, Position.CONSTELLATION_GLONASS ];
        started = startUpdates(options)
    }
    
    // Use standard GPS with earlier versions of ConnectIQ
    if (!started) {
        options = Position.LOCATION_CONTINUOUS;
        started = startUpdates(options)
    }
}
```