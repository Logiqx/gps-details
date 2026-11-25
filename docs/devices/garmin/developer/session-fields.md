## Garmin Developer Tips - Session Fields

### Overview

It is requested that speed sailing applications record some additional metadata to the FIT file.

This metadata includes details of the app, craft, and [GNSS configuration](gnss-config.md) that has been selected.



### Session

The following developer fields are recommended in the FIT session.

|          field name           | units |  type  | example  |
| :---------------------------: | :---: | :----: | :------: |
|           app name            |   -   | string |  APPro   |
|            app ver            |   -   | string |  v5.09   |
|             craft             |   -   | string | windfoil |
| [gnss config](gnss-config.md) |   -   | uint16 |    6     |

Note: GNSS config should be recorded whether or not it was selected using `options[:configuration]` or `options[:constellations]`.



### Sport

The following sport profiles are suitable for speed sailing.

| Activity          | Value |    Sport    |   Name   |  Craft   |
| ----------------- | :---: | :---------: | :------: | :------: |
| SPORT_WINDSURFING |  43   | windsurfing | Windsurf | windsurf |
| SPORT_WINDSURFING |  43   | windsurfing | Windfoil | windfoil |
| SPORT_GENERIC     |   0   |   generic   | Wingfoil | wingfoil |
| SPORT_KITESURFING |  44   | kitesurfing | Kitesurf | kitesurf |
| SPORT_KITESURFING |  44   | kitesurfing | Kitefoil | kitefoil |

Notes:

- The sport and name are automatically written to the FIT by the [Toybox.ActivityRecording](https://developer.garmin.com/connect-iq/api-docs/Toybox/ActivityRecording.html) module.
- All of the possible activity types are listed in [Toybox.Activity](https://developer.garmin.com/connect-iq/api-docs/Toybox/Activity.html#Sport-module) but only a few of them record Doppler-derived speeds.
- There is no dedicated activity type for wingfoiling so `SPORT_GENERIC` is used by apps such as APPro Windsurf.



### Popular Apps

#### APPro

|    field name    | units |  type  |                 example                  |
| :--------------: | :---: | :----: | :--------------------------------------: |
|   result 2or5s   |  kt   | string |                 29.38 kt                 |
|   result 5x10s   |  kt   | string | 27.47 kt (28.47 28.21 27.38 27.02 26.28) |
|   result 30min   |  kt   | string |                 13.69 kt                 |
|   result 60min   |  kt   | string |                 7.41 kt                  |
|   result 100m    |  kt   | string |                 28.66 kt                 |
|   result 250m    |  kt   | string |                 27.90 kt                 |
|   result 500m    |  kt   | string |                 27.27 kt                 |
|    result NM     |  kt   | string |                 25.72 kt                 |
| result a500or250 |  kt   | string |                 19.39 kt                 |
|   result dist    |  km   | string |                 26.34 km                 |
|    MDI points    |   -   | string |                  1/0/0                   |
|     app name     |   -   | string |                  APPro                   |
|     app ver      |   -   | string |                  v5.09                   |
|      craft       |   -   | string |                 windfoil                 |
|   gnss config    |   -   | uint16 |                    6                     |

Recommendations:

- Change sport names to be "Windsurf" instead of "Windsurfing" to match the Garmin standard.



#### Speedsurf.app

|  field name  | units |  type  |                 example                  |
| :----------: | :---: | :----: | :--------------------------------------: |
|   app name   |   -   | string |                SpeedSurf                 |
|   app ver    |   -   | string |                  0.3.11                  |
|    craft     |   -   | string |                 windsurf                 |
| result 2or5s |   -   | string |                 29.38 kt                 |
| result 5x10s |   -   | string | 27.47 kt (28.47 28.21 27.38 27.02 26.28) |
| result 30min |   -   | string |                 13.69 kt                 |
| result 60min |   -   | string |                 7.41 kt                  |
| result 250m  |   -   | string |                 27.90 kt                 |
| result 500m  |   -   | string |                 27.27 kt                 |
|  result NM   |   -   | string |                 25.72 kt                 |
| result a500  |   -   | string |                 19.39 kt                 |
| result dist  |   -   | string |                 26.34 km                 |

Recommendations:

- Add `gnss config` to record what has been selected.
- Add units to all of the results - optional because they are actually strings.



#### Gustly

|          field name          | units |  type   |      example       |
| :--------------------------: | :---: | :-----: | :----------------: |
|         max speed 2s         |  kts  | float32 | 21.033830165863037 |
|  gustly fit schema version   |   -   |  uint8  |         1          |
|      gnss configuration      |   -   |  uint8  |         6          |
|  requested sample period ms  |  ms   | uint16  |        1000        |
|   location callback count    | count | uint32  |        147         |
| max location callback gap ms |  ms   | uint32  |        1576        |

Recommendations:

- Add `app name`, `app ver`, `craft`.
- Consider renaming `gnss configuration` to `gnss config` to match other apps.



