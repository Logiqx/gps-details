## COROS Activities

Author: Michael George

Created: 9 July 2024



### Overview

This page documents some simple investigations to determine the nature of filtering + smoothing for a selection of COROS activity types.

The primary objective was to identify the most suitable activities for windsurfers, when using cheaper watches such as the PACE 3.

The majority of testing was done whilst walking or driving, since these approaches provide some useful insights into the filtering / smoothing.



### Summary

#### Bike / Flatwater / Windsurfing / GPS Cardio

- All of these modes appear to implement similar filtering / smoothing.
  - n.b. This contrasts with the stand up paddling activity on Garmin devices, which uses different filtering / smoothing.

- Position-derived speed and Doppler-derived speed are very similar.
  - Some fluctuations, but both are clearly smoothed.
  - Intriguing that the smoothing of speed and position produces similar results.

- Possible over-estimation of alphas due to the dips being inaccurate, when compared to the Motion.



#### Speedsurfing

- Firmware V3.0408.0 (buggy)
  - Position-derived speed and Doppler-derived speed are clearly behaving differently.
  - Doppler-derived speed is heavily filtered, and contains weird downward spikes during periods of acceleration.
- Firmware V3.0506.0
  - Fixes the issues in firmware V3.0408.0.
  - Essentially behaves like the bike / flatwater / windsurfing / GPS cardio activities.



#### Run / Hike / Walk / Open Water Swim

- Position is filtered, but not as much as speed.
  - Position-derived speed exhibits steps and is more choppy than bike / flatwater / windsurfing / GPS cardio.

- Speed is heavily filtered / smoothed.
  - Large dips + plateaus are clearly evident in the Doppler-derived speed data when driving.



#### Climbing

- The position-derived speed data exhibits steps, like the hike activity
- Large dips are clearly evident in the Doppler-derived speed data when driving, seemingly worse than the hike activity.



#### Custom Activities

- Position is potentially filtered but more choppy than bike / flatwater / windsurfing / GPS cardio.
- Speed is heavily filtered / smoothed, but not quite so much as running / hiking / walking.
  - Smoothing appears to flatten the speeds in driving tests.




### Driving Tests

#### 2024-06-30

This session compares the performance of several activity types whilst driving, prior to testing the beta firmware on 1 July 2024.

- COROS APEX 2 Pro - Firmware V3.0408.0
  - Hike
  - Bike
  - Flatwater
  - Speedsurfing
  - Climbing
  - Custom Activity - Sailing

The full writeup is on a separate [page](driving-2024-06-30/README.md).



### Walking Tests

#### 2024-05-27

This was the activity testing performed on 2024-05-27, whilst walking in an open-sky environment.

Note: This was the very first activity test and was not particularly structured, so it may be better to skip to 2024-06-25.

- COROS APEX 2 Pro - Firmware V3.0408.0
  - Run
  - Hike
  - Flatwater
  - Bike
  - Windsurfing

The full writeup is on a separate [page](walking-2024-05-27/README.md).



#### 2024-05-29

This was the activity testing performed on 2024-05-29, whilst walking in an open-sky environment.

Note: This was the second activity test and was not quite as structured as subsequent testing, so it may be better to skip to 2024-06-25.

- COROS APEX 2 Pro + PACE 3 - Firmware V3.0408.0
  - Flatwater
  - Open Water Swim
  - GPS Cardio
  - Bike
  - Walk

The full writeup is on a separate [page](walking-2024-05-29/README.md).



#### 2024-06-25

This was the first structured test for COROS activity types, 

- COROS APEX 2 Pro - Firmware V3.0408.0
  - Session 1
    - Bike
    - Flatwater
    - Windsurfing
    - GPS Cardio
  - Session 2
    - Run
    - Trail Run
    - Hike
    - Walk

The full writeup is on a separate [page](walking-2024-06-25/README.md).



#### 2024-06-30

This session compares speedsurfing against windsurfing, and also looks at two custom activities.

- COROS APEX 2 Pro - Firmware V3.0408.0
  - Windsurfing
  - Speedsurfing
  - Custom Activity (Sailing)
  - Custom Activity (Driving)

The full writeup is on a separate [page](walking-2024-06-30/README.md).



#### 2024-07-03

This session confirms the new firmware fixes the speedsurfing smoothing issue of firmware V3.0408.0

- COROS APEX 2 Pro - Firmware V3.0506.0
  - Speedsurfing
  - Windsurfing
  - Speedsurfing
  - Windsurfing

The full writeup is on a separate [page](walking-2024-07-03/README.md).

