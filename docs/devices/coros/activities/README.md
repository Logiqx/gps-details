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



#### 2024-05-29

- COROS APEX 2 Pro + PACE 3 - Firmware V3.0408.0
  - Flatwater, Open Water Swim, GPS Cardio, Bike, Walk

The full writeup is on a separate [page](walking-2024-05-29/README.md).



### Summary

WIP...

- Bike / SUP (Flatwater) / Windsurf / GPS Cardio.
  - Position-derived speed and Doppler-derived speed are very similar.
  - Some fluctuations, but both are clearly smoothed.
  - Intriguing that the smoothing of speed and position produces similar results.
  - Possible over-estimation of alphas (see Jo 2024-05-29).
- Run / Hike / Walk / Open Water Swim.
  - Speed is heavily smoothed.
  - Position is smoothed, but not as much as speed.
  - Smoothing of position appears to be different to Bike / SUP (Flatwater) / Windsurf / GPS Cardio.
- Custom.
  - Smoothing appears to flatten the speeds.