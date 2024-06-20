## Motion Mini - Rate Investigation

### Driving Tests

#### Overview

The driving tests provide a convenient platform for the comparison of different logging rates, subject to relatively smooth acceleration and deceleration. The route was repeated a number of times and there was an emphasis on driving smoothly, attempting to keep [jerk](https://en.wikipedia.org/wiki/Jerk_(physics)) to a minimum.

The purpose of this particular test was to determine if there is any difference in behavior between motions logging at 1 / 2 / 5 / 10 Hz. It is interesting to note that to all intents and purposes the differences between 1 / 2 / 5 / 10 Hz are minimal and all of them produce good results.



#### Installation

The motions were attached to some pipe lagging with identical orientations and wedged between the dashboard / windscreen.

Prior to driving the motions were given a minimum of a 15 minute warm up, allowing for signal acquisition and enough time to acquire the ephemerides.

![installation](img/20240618_162438.jpg)



#### Data

All of the data is available for download in OAO format:

- [2024-06-18-van.rar](2024-06-18-van.rar) - newer motions logging @ 1 / 2 / 5 Hz
- [2024-06-19-van.rar](2024-06-19-van.rar) - older motions logging @ 1 / 2 / 5 / 10 Hz



#### Warm Up

The importance of the warm up will not be documented here but for anyone so inclined you can find similar findings to the static tests.



#### Day 1

Testing on 18 June used the newer style mini motions, logging at 1 / 2 / 5 Hz.

The last digit of the serial numbers indicates the logging rates and the motions were arranged as seen in the previous image:

![20240618-layout](img/20240618_162516.jpg)

A visual inspection of the 1 Hz and 5 Hz data in GPS Speedreader shows slightly less detail in the 1 Hz data, when a change in acceleration occurs.

![20240618-comparison](img/20240618.png)

It is possible to compare various combinations of the 1 / 2 / 5 Hz data but it is pretty clear that they are all very similar.



My original working notes were as follows:

- 5 Hz > 2 Hz > 1 Hz for noise when at rest but should also note the van was parked next to house.
- All tracks were very similar once moving.



#### Day 2

Testing on 19 June used the older style mini motions, logging at 1 / 2 / 5 / 10 Hz.

The last digit of the serial numbers indicates the logging rates and the motions were arranged as seen in the previous image:

![20240619-layout](img/20240619_153701.jpg)

A visual inspection in GPS Speedreader shows that the 1 / 2 / 5 / 10 Hz data is very similar (as per the previous test), but both 10 Hz devices exhibited some errors. The screenshot below shows one such error from the 10 Hz device in blue.

![20240619-comparison](img/20240619.png)



It is possible to compare various combinations of the 1 / 2 / 5 / 10 Hz data but it is pretty clear that they are all very similar.



My original working notes were as follows:

- See 14:15:17 and 14:20:21 in 0630 for inaccuracy but evident in sAcc
- See 14:03:43 and 14:23:12 in 0660 for inaccuracy but evident in sAcc
- Both are 10 Hz, maybe a coincidence?



#### Conclusions

The basic conclusions are as follows:

- Activities that do not see sudden changes in acceleration (jerk) can be accurately captured even with 1 Hz logging.
- Higher logging rates such as 5 Hz do however manage to capture sudden changes in acceleration - aka jerk.
- 10 Hz logging may be more prone to errors as described earlier, but this should not be taken as gospel.

