## COROS Activities

Author: Michael George

Created: 9 July 2024



### Overview

This page documents some simple investigations to determine the nature of smoothing for a selection of COROS activity types.

The primary objective was to identify the most suitable activities for windsurfers, when using cheaper watches such as the PACE 3.

The majority of testing was done whilst walking or driving, since these approaches provide some useful insights into the filtering / smoothing.



### Walking Tests

#### 2024-05-27

- COROS APEX 2 Pro - Firmware V3.0408.0
  - Run, Hike, Flatwater, Bike, Windsurfing

The full writeup is on a separate [page](walking-2024-05-27/README.md).

Note: This was the very first activity test and was not particularly structured, so it may be better to skip to 2024-06-25.



#### 2024-05-29

- COROS APEX 2 Pro + PACE 3 - Firmware V3.0408.0
  - Flatwater, Open Water Swim, GPS Cardio, Bike, Walk

The full writeup is on a separate [page](walking-2024-05-29/README.md).

Note: This was the second activity test and was not quite as structured as subsequent testing, so it may be better to skip to 2024-06-25.



#### 2024-06-25

This was the first structured test for COROS activity types, 

- COROS APEX 2 Pro - Firmware V3.0408.0
  - Bike, Flatwater, Windsurfing, GPS Cardio
  - Run, Trail Run, Hike, Walk

The full writeup is on a separate [page](walking-2024-06-25/README.md).



#### 2024-06-30

- COROS APEX 2 Pro - Firmware V3.0408.0
  - Windsurfing, Speedsurfing, Custom Activity (Sailing), Custom Activity (Driving)

The full writeup is on a separate [page](walking-2024-06-30/README.md).



### Summary

Bike / Flatwater / Windsurf / GPS Cardio:
- Position-derived speed and Doppler-derived speed are very similar.
- Some fluctuations, but both are clearly smoothed.
- Intriguing that the smoothing of speed and position produces similar results.
- Possible over-estimation of alphas - see Jo 2024-05-29.

Speedsurfing - Firmware V3.0408.0

- Position-derived speed and Doppler-derived speed are clearly different.
- Doppler-derived speed is heavily filtered, which is very undesirable.

Run / Hike / Walk / Open Water Swim:
- Speed is heavily filtered / smoothed.
- Position is filtered, but not as much as speed.
- Position is more choppy than bike / flatwater / windsurfing / GPS cardio.

Custom Activities:

- Speed is heavily filtered / smoothed, but not quite so much as running / hiking / walking.
  - Smoothing appears to flatten the speeds in driving tests.
- Position is potentially filtered but more choppy than bike / flatwater / windsurfing / GPS cardio.