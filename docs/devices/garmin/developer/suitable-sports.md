## Garmin Developer Tips - Suitable Sports

### Overview

Only a few of the sports in [Toybox.Activity](https://developer.garmin.com/connect-iq/api-docs/Toybox/Activity.html#Sport-module) are suitable for speed sailing apps.

| name              | value |
| ----------------- | ----- |
| SPORT_GENERIC     | 0     |
| SPORT_WINDSURFING | 43    |
| SPORT_KITESURFING | 44    |

Note: The sport used for the activity recording is automatically saved to the FIT and it will persist, even if the activity type is subsequently changed in Garmin Connect.

