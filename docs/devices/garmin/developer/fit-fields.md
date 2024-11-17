## Garmin Developer Tips

### Additional FIT Fields

It is requested that speed sailing applications record some additional metadata to the FIT file.

This metadata includes the GNSS configuration  (e.g. GPS + GALILEO) and [fix quality](fix-quality.md) (e.g. quality = good).

The relevant fields from [Toybox.Position](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html) can be written to the FIT using the [Toybox.FitContributor](https://developer.garmin.com/connect-iq/api-docs/Toybox/FitContributor.html) module.

This document is very much WIP and yet to be finalized / agreed.



#### Session

| name        | type            | **mesgType**      | source                                                       | example                       |
| ----------- | --------------- | ----------------- | ------------------------------------------------------------ | ----------------------------- |
| gnss_config | DATA_TYPE_UINT8 | MESG_TYPE_SESSION | [Configuration](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#Configuration-module) | 3 = CONFIGURATION_GPS_GALILEO |

Note: The sport is automatically written to the FIT by the [Toybox.ActivityRecording](https://developer.garmin.com/connect-iq/api-docs/Toybox/ActivityRecording.html) module.



#### Record

| name        | type            | **mesgType**     | source                                                       | example          |
| ----------- | --------------- | ---------------- | ------------------------------------------------------------ | ---------------- |
| fix_quality | DATA_TYPE_UINT8 | MESG_TYPE_RECORD | [Quality](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#Quality-module) | 4 = QUALITY_GOOD |

