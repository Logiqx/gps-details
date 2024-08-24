## Garmin Developer Tips

### Enabling Location Events

How to use GNSS constellations other than GPS on the maximum number of devices.

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

    // Use configuration parameter for ConnectIQ 3.3.6 and later (e.g. Fenix 5 Plus)
    if (Position has :hasConfigurationSupport) {
        // GPS L1, GLONASS, GALILEO L1, BEIDOU L1 (e.g. Fenix 7)
        if (Position has :CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1) &&
           (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1  )) {
            options[:configuration] = Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1;
        // GPS L1 and GALILEO L1 - May be skipped in the simulator (e.g. Fenix 6)
        } else if (Position has :CONFIGURATION_GPS_GALILEO) &&
                  (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GALILEO)) {
            options[:configuration] = Position.CONFIGURATION_GPS_GALILEO;
        // GPS L1 and BEIDOU L1 - May be used in the simulator (e.g. Fenix 6)
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

    // Use constellations parameter for ConnectIQ 3.2.0 to 3.3.5 (e.g. vivoactive 3 music)
    if (!started && Position has :CONSTELLATION_GALILEO {
        options[:constellations] = [ Position.CONSTELLATION_GPS, Position.CONSTELLATION_GALILEO ];
        started = startUpdates(options)
    }

    // Use constellations parameter for ConnectIQ 3.2.0 to 3.3.5 - Theoretically redundant?
    if (!started && Position has :CONSTELLATION_GLONASS) {
        options[:constellations] = [ Position.CONSTELLATION_GPS, Position.CONSTELLATION_GLONASS ];
        started = startUpdates(options)
    }
    
    // Use standard GPS with versions prior to ConnectIQ 3.2.0
    if (!started) {
        options = Position.LOCATION_CONTINUOUS;
        started = startUpdates(options)
    }
}
```