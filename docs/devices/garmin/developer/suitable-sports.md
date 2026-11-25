## Garmin Developer Tips - Suitable Sports

### Overview

Only a few of the sports in [Toybox.Activity](https://developer.garmin.com/connect-iq/api-docs/Toybox/Activity.html#Sport-module) are suitable for speed sailing apps.

| name              | value |
| ----------------- | ----- |
| SPORT_GENERIC     | 0     |
| SPORT_WINDSURFING | 43    |
| SPORT_KITESURFING | 44    |

All of the possible activity types are listed in [Toybox.Activity](https://developer.garmin.com/connect-iq/api-docs/Toybox/Activity.html#Sport-module) but only a few of them record Doppler-derived speeds



### Craft

These are the recommendations for speed sailing apps.

| Activity               | Sport       | Name     |
| ---------------------- | ----------- | -------- |
| SPORT_WINDSURFING (43) | windsurfing | Windsurf |
| SPORT_WINDSURFING (43) | windsurfing | Windfoil |
| SPORT_GENERIC (0)      | generic     | Wingfoil |
| SPORT_KITESURFING (44) | kitesurfing | Kitesurf |
| SPORT_KITESURFING (44) | kitesurfing | Kitefoil |

Notes:

- The sport and name are automatically written to the FIT by the [Toybox.ActivityRecording](https://developer.garmin.com/connect-iq/api-docs/Toybox/ActivityRecording.html) module.
  - The Garmin standard is for names to be something like "Windsurf" instead of "Windsurfing".

- There is no dedicated activity type for wingfoiling so `SPORT_GENERIC` is used by apps such as APPro Windsurf.
  - It would be good if Garmin were to add a wingfoiling activity as described on [Github](https://github.com/Logiqx/garmin-feedback/issues/10).


