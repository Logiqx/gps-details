## Garmin Developer Tips

### Fix Quality

#### Background

The [Toybox.Position](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html) module provides a GNSS fix [quality](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#Quality-module) indicator.

| Name | Value | Description | Sats | HDOP |
| -------- | :-----: | --------------- | :---------------: | :---------------: |
| QUALITY_NOT_AVAILABLE | 0 | GPS is not available |  |  |
| QUALITY_LAST_KNOWN | 1 | The Location is based on the last known GPS fix. |  |  |
| QUALITY_POOR | 2 | The Location was calculated with a poor GPS fix. Only a 2-D GPS fix is available, likely due to a limited number of tracked satellites. | 3 |  |
| QUALITY_USABLE | 3 | The Location was calculated with a usable GPS fix. A 3-D GPS fix is available, with marginal [HDOP](https://en.wikipedia.org/wiki/Dilution_of_precision_(navigation)) (horizontal dilution of precision) | >= 4 | > 3.0 |
| QUALITY_GOOD | 4 | The Location was calculated with a good GPS fix. A 3-D GPS fix is available, with good-to-excellent [HDOP](https://en.wikipedia.org/wiki/Dilution_of_precision_(navigation)) (horizontal dilution of precision). | >= 4 | <= 3.0 |



#### Recommendations

In addition to recording the GNSS fix quality in the FIT file ([see further details](fit-fields.md)), it is recommended that the user be made aware of the fix quality. Only two colors / categories should be presented to the user.

- Green for QUALITY_GOOD
- Red for anything other than QUALITY_GOOD
