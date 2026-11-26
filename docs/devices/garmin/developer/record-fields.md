## Garmin Developer Tips - Record Fields

### Overview

It is requested that speed sailing applications record some additional fields in the FIT records.

- PVT data - [fix quality](fix-quality.md), sog, cog, hae
- Diagnostic data - timer, elapsed

The relevant fields can be written to the FIT using the [Toybox.FitContributor](https://developer.garmin.com/connect-iq/api-docs/Toybox/FitContributor.html) module.



### PVT Data - Recommended

Some additional PVT data is recommended in FIT records.

| field name  | units |  type   |                            source                            |      example       |
| :---------: | :---: | :-----: | :----------------------------------------------------------: | :----------------: |
| fix quality |   -   |  uint8  | [Toybox.Position.Info.accuracy](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position/Info.html) |         4          |
|     sog     |  m/s  | float32 | [Toybox.Position.Info.speed](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position/Info.html) | 1.3249582052230835 |
|     cog     |  deg  | float32 | [Toybox.Position.Info.heading](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position/Info.html) | 337.15435791015625 |
|     hae     |   m   | float32 | [Toybox.Position.Info.altitude](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position/Info.html) | 45.84169006347656  |



### Diagnostic Data - Optional

Some diagnostic information can also be useful in FIT records, perhaps enabled by a debug mode.

| field name | units |  type  |                            source                            |  example  |
| :--------: | :---: | :----: | :----------------------------------------------------------: | :-------: |
|   timer    |  ms   | sint32 | [Toybox.System.getTimer()](https://developer.garmin.com/connect-iq/api-docs/Toybox/System.html#getTimer-instance_function) | 160257205 |
|  elapsed   |  ms   | uint16 | [Toybox.System.getTimer()](https://developer.garmin.com/connect-iq/api-docs/Toybox/System.html#getTimer-instance_function) |     7     |

Notes:

- The `timer` field records when each location event occurs.
- The `elapsed` field records how long the code took to run.



### Popular Apps

#### APPro

|          field name           | units |  type   |  native mesg num   |
| :---------------------------: | :---: | :-----: | :----------------: |
| [fix quality](fix-quality.md) |   -   |  uint8  |         4          |
|              sog              |  m/s  | float32 | 1.3249582052230835 |
|              cog              |  deg  | float32 | 337.15435791015625 |
|              hae              |   m   | float32 | 45.84169006347656  |
|             timer             |  ms   | sint32  |     160257205      |
|            elapsed            |  ms   | uint16  |         7          |



#### Speedsurf.app

|          field name           | units |  type   |  native mesg num   |
| :---------------------------: | :---: | :-----: | :----------------: |
|          ss fix time          |   s   | uint32  |  20783d 17:12:36   |
| [fix quality](fix-quality.md) |   -   |  uint8  |         4          |
|              sog              |  m/s  | float32 | 1.3249582052230835 |
|              cog              |  deg  | float32 | 337.15435791015625 |
|              hae              |   m   | float32 | 45.84169006347656  |



#### Gustly

Recommendations:

- Add the recommended PVT fields - fix quality, sog, cog, hae
- Add the diagnostic info - timer, elapsed

