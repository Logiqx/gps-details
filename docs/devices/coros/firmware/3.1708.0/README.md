## 3.1708.0 - 23 Jun 2026

### Overview

Some of the problems affecting the [APEX 4](../../investigations/apex-4/README.md) are also affecting the APEX 2, APEX 2 Pro, VERTIX 2, and VERTIX 2S.



### Missing GNSS Data

COROS watches are supposed to capture some special data for the Speedsurfing activity:

- Number of Satellites
- Horizontal Dilution of Precision (HDOP)
- Course Over Ground (COG)

These data items have not been present since FW 3.1708.0.



#### Satellite Details

Number of Satellites and [Horizontal Dilution of Precision](https://en.wikipedia.org/wiki/Dilution_of_precision) (HDOP) are used for filtering, and particularly useful when erroneous speeds are recorded during a crash. Neither the number of satellites or HDOP are present in the FIT + GPX files in FW 3.1708.0.



#### Course Over Ground

GNSS receivers calculate Speed Over Ground (SOG) and Course Over Ground (COG) to represent the two-dimensional velocity of the receiver. SOG and COG are both required to calculate results for various real-world competitions:

- International Speed Windsurfing Class
- Prince of Speed
- Weymouth Speed Week
- German Speed Championships

Since COG is not recorded in this firmware it is unsuitable for the above competitions, and likely some others around the world.



#### Activity Type

The activity type is crucial when it comes to having good quality speed data from a COROS watch. It was possible to infer the activity type of earlier watches by the presence (or absence) of Satellites, HDOP, and COG.

Since these items are not recorded by FW 3.1708.0 there is no way to determine whether the activity was Speedsurfing. This makes it impossible for GPS-Speedsurfing to validate the session.