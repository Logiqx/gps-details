## Garmin Developer Tips

### Enabling Location Events

How to use satellite constellations other than the default (CONSTELLATION_GPS). 

```c
function initializeLocationEvents()
{
    var enabled = false;

    var options = {
        :acquisitionType => Position.LOCATION_CONTINUOUS
    };

    // Use options configuration with ConnectIQ 3.3.6 and later
    if (Position has :hasConfigurationSupport) {
        try {
            if (Position has :CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1) &&
               (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1  )) {
                options[:configuration] = Position.CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1;
            } else if (Position has :CONFIGURATION_GPS_GALILEO) &&
                      (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GALILEO)) {
                options[:configuration] = Position.CONFIGURATION_GPS_GALILEO;
            } else if (Position has :CONFIGURATION_GPS_GLONASS) &&
                      (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS_GLONASS)) {
                options[:configuration] = Position.CONFIGURATION_GPS_GLONASS;
            } else if (Position has :CONFIGURATION_GPS) &&
                      (Position.hasConfigurationSupport(Position.CONFIGURATION_GPS)) {
                options[:configuration] = Position.CONFIGURATION_GPS;
            }
            Position.enableLocationEvents(options, method(:onPosition));
            enabled = true
        }
        catch (e) {
            // Position.Configuration failed
        }
    }

    // Use options dictionary for GPS + Galileo with ConnectIQ 3.2.0 and later
    if (enabled == false) {
        try {
            if (Position has :CONSTELLATION_GALILEO) {
                options[:constellations] = [ Position.CONSTELLATION_GPS, Position.CONSTELLATION_GALILEO ];
                Position.enableLocationEvents(options, method(:onPosition));
				enabled = true
            }
        }
        catch (e) {
            // CONSTELLATION_GALILEO failed
        }
    }

    // Use options dictionary for GPS + GLONASS with ConnectIQ 3.2.0 and later
    if (enabled == false) {
        try {
            if (Position has :CONSTELLATION_GLONASS) {
                options[:constellations] = [ Position.CONSTELLATION_GPS, Position.CONSTELLATION_GLONASS ];
                Position.enableLocationEvents(options, method(:onPosition));
				enabled = true
            }
        }
        catch (e) {
            // CONSTELLATION_GLONASS failed
        }
    }
    
    // Use standard GPS with earlier versions of ConnectIQ
    if (enabled == false) {
        options = Position.LOCATION_CONTINUOUS;
        Position.enableLocationEvents(options, method(:onPosition));
    }
}
```