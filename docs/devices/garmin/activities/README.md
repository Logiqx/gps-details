## Garmin Activities

Author: Michael George

Created: 9 July 2024



### Overview

This page documents some simple investigations to determine the nature of smoothing for a selection of Garmin activity types.

The primary objective was to identify the most suitable activities for windsurfers, when using watches such as the Forerunner 255.

The majority of testing was done whilst walking or driving, since these approaches provide some useful insights into the filtering / smoothing.



### Walking Tests

#### 2024-05-27

- Forerunner 255
  - Running, Hiking, Stand Up Paddling, Cycling, Other

The full writeup is on a separate [page](walking-2024-05-27/README.md).

Note: This was the very first activity test and was not particularly structured, so it may be better to skip to 2024-06-25.



#### 2024-06-25

This was the first structured test for COROS activity types, 

- Forerunner 255
  - Cycling, Stand Up Paddling, Windsurfing, Other
  - Running, Trail Running, Hiking, Walking

The full writeup is on a separate [page](walking-2024-06-25/README.md).



### Summary

Running / Trail Running / Hiking / Walking:

- Speed is heavily filtered / smoothed.
- Positional data is relatively noisy, and possibly closer to the raw GNSS data (unlike COROS).

Stand Up Paddling:

- Speed is heavily filtered / smoothed, but not as much as running / hiking / walking.
- Speed and positional data exhibits the type of aliasing that is often observed in unfiltered speeds from 1 Hz devices (re: Nyquist).

Cycling / Windsurfing / Other:

- Speed does not appear to be filtered / smoothed, and exhibits the type of aliasing that is often observed in unfiltered speeds from 1 Hz devices (re: Nyquist).
- Positional data is not dissimilar to running, hiking, or cycling.