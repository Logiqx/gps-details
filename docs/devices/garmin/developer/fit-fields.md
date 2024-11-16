## Garmin Developer Tips

### Additional FIT Fields

This document is WIP and yet to be finalized / agreed.

Additional fields should be written to the FIT using the [Toybox.FitContributor](https://developer.garmin.com/connect-iq/api-docs/Toybox/FitContributor.html) module.



#### Session

| name        | type            | **mesgType**      | source                                                       | example                                         |
| ----------- | --------------- | ----------------- | ------------------------------------------------------------ | ----------------------------------------------- |
| gnss_config | DATA_TYPE_UINT8 | MESG_TYPE_SESSION | [GNSS configuration](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html) | 5 = CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1 |

Note: The sport is automatically written to the FIT by the [activity recording](https://developer.garmin.com/connect-iq/api-docs/Toybox/ActivityRecording.html) module.



#### Record

| name        | type            | **mesgType**     | source                                                       | example          |
| ----------- | --------------- | ---------------- | ------------------------------------------------------------ | ---------------- |
| fix_quality | DATA_TYPE_UINT8 | MESG_TYPE_RECORD | [Quality](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html) | 4 = QUALITY_GOOD |

