## 3.2108.0 - 2 Nov 2026

### Overview

The APEX 4 [release notes](https://support.coros.com/hc/en-us/articles/42682214780820-COROS-APEX-4-42-and-APEX-4-46-Release-Notes) state the following for FW 3.2108.0:

> Additional bug fixes and performance optimizations.

Importantly these fixes have re-introduced number of satellites, HDOP, and Course Over Ground (COG).

The charts below show a session from 14 Nov 2026 for FW 3.2108.0 and COROS app 4.11.8.



![RoskildeSpeedsurfing20261114115018](img/RoskildeSpeedsurfing20261114115018.png)



### Observations

#### Sats

Number of satellites appears to reflect the total number of satellites in use.

The number of satellites is shown earlier in this document, and 32 appears to be the maximum.

Good to see the sudden loss of satellites during a crash... 30 to 20 in one second:

![dropped-sats-crash](img/dropped-sats-crash.png)



#### HDOP

HDOP starts off between 1.0 and 1.3, but settles between 0.8 and 0.9 for most of the session.

Interesting to note that GPSResults contains a bug and is doubling the HDOP values.



#### COG

Course Over Ground (COG) is present in the FIT file, albeit without an decimal places.

Ideally COG it would have two decimal places.



### Next Steps

- Confirm Sats + HDOP + COG on the APEX 2, APEX 2 Pro, VERTIX 2, and VERTIX 2S
  - Does number of satellites reflect the true number of satellites?
- Consider improvements to existing filters
  - Sudden loss of satellites - e.g. 30 to 20 is evident, presumably due to a crash
- Study the actual speed data, compared against a suitable benchmark device
  - Ideally a Motion or ESP, but next best would be GW-60, GW-52, or GW-31
- Report bug in GPSResults

