## Garmin Activities

Author: Michael George

Created: 9 July 2024



### Overview

This page documents some simple investigations to determine the nature of filtering + smoothing for a selection of Garmin activity types.

The primary objective was to identify the most suitable activities for windsurfers, when using watches such as the Forerunner 255.

The majority of testing was done whilst walking or driving, since these approaches provide some useful insights into the filtering / smoothing.



### Summary

#### Running / Trail Running / Hiking / Walking

- The positional data seems to be relatively noisy, suggesting there is not a lot of filtering being applied.
- Speed is heavily filtered / smoothed.
  - Speed may actually be derived from the positional data, due to the presence of near-identical spikes during a driving test.
  - The speed exhibits a lag of around 4 or 5 seconds, and it is quite different from the speed of the two motions.
- It's clear that the speed data from the hiking activity is unsuitable for activities such as speedsurfing.




#### Stand Up Paddling

- There is some evidence of filtering being applied to the positional data, although not as much as the cycling activity.
- Speed is heavily filtered / smoothed, but not as much as running / hiking / walking.
  - The recorded speeds clearly lag behind the positional data and are heavily filtered, which will be to cope with the paddling action.

- Speed and positional data exhibit the type of aliasing that is often observed in unfiltered speeds from 1 Hz devices (re: Nyquist).
- It's clear that the speed data from the stand up paddling activity is unsuitable for activities such as speedsurfing.



#### Windsurfing / Other

- It looks like the positional data hasn't been filtered, unlike the cycling activity.
  - It's worth noting that some data points do not update the latitude and longitude, resulting artefacts in position-derived speeds.
- Speed does not appear to be filtered / smoothed
  - It appears that the speed data is the Doppler-derived speed, correlating closely with the benchmark devices; 1Hz and 5 Hz Motions.
  - It exhibits the type of aliasing that is often observed in unfiltered speeds from 1 Hz devices (re: Nyquist).

- There can sometimes be a slight lag (typically around 1 or 2 seconds), but this varies from one session to the next.



#### Cycling

- It looks like the positional data has been filtered, due to the relative smoothness.
- It seems likely that the speed data is the Doppler-derived speed, correlating closely with the benchmark devices; 1Hz and 5 Hz Motions.
  - Speed often does not appear to be filtered / smoothed, and exhibits the type of aliasing that is often observed in unfiltered speeds from 1 Hz devices (re: Nyquist).
  - However, filtering of speed data can vary considerably during different tests.
    - It would appear that the filtering for cycling can change quite substantially!
- Missing data points can occur during this activity type and may introduce a lag in the data.



### Driving Tests

#### 2024-06-30

This session compares the performance of several activity types whilst driving.

- Forerunner 255
  - Hiking
  - Cycling
  - Stand Up Paddling
  - Windsurfing
  - Other #1
  - Other #2

The full writeup is on a separate [page](driving-2024-06-30/README.md).



### Walking Tests

#### 2024-05-27

- Forerunner 255
  - Running
  - Hiking
  - Stand Up Paddling
  - Cycling
  - Other

The full writeup is on a separate [page](walking-2024-05-27/README.md).

Note: This was the very first activity test and was not particularly structured, so it may be better to skip to 2024-06-25.



#### 2024-06-25

This was the first structured test for COROS activity types, 

- Forerunner 255
  - Session 1 - Forerunner 255
    - Cycling
    - Stand Up Paddling
    - Windsurfing
    - Other
  - Session 2 - Forerunner 255
    - Running
    - Trail Running
    - Hiking
    - Walking

The full writeup is on a separate [page](walking-2024-06-25/README.md).



#### 2024-06-30

Test session to compare two activities - Cycling and Other.

- Forerunner 255
  - Cycling
  - Other
  - Cycling
  - Other

The full writeup is on a separate [page](walking-2024-06-30/README.md).



#### 2024-07-03

One long test session, comparing to 1Hz and 5 Hz Motions.

- Forerunner 255
  - Windsurfing

The full writeup is on a separate [page](walking-2024-07-03/README.md).
