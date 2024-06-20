## Motion Mini - Rate Investigation

### Static Tests

#### Overview

The general concept behind static testing is that the GNSS receivers are in constant motion (due to the rotation of the earth), but speed over ground (SOG) is known to be zero. Any speed reported by the receiver is therefore an error and can be considered to be noise.

The purpose of this particular test was to determine if there is any difference in behavior between motions logging at 1 / 2 / 5 / 10 Hz. It is clear from the results that higher logging rates do indeed suffer from greater levels of noise, and exhibit larger outliers.



#### Environment

The tests were performed on calm days, within the security of a garden where the motions could be left unattended for approximately 6 hours.

The motions were placed on a raised table to minimize the effects of a nearby wall, but otherwise a pretty decent open-sky environment.

Once the test was underway the motions were left untouched, right until the end of the test when they were switched into WiFi mode.

![environment](img/20240618_123010.jpg)



#### Data

All of the data is available for download in OAO format:

- [2024-06-18-garden.rar](2024-06-18-garden.rar) - older motions logging @ 1 / 2 / 5 / 10 Hz
- [2024-06-19-garden.rar](2024-06-19-garden.rar) - newer motions logging @ 1 / 2 / 5 Hz

It is important to top and tail the data, prior to any analysis:

- Delete the first 15 minutes which should be regarded as the warm up, allowing for acquisition of the ephemerides.
- Delete the last 2 minutes which is likely to include movement whilst switching the motions into WiFi mode.



#### Warm Up

The significance of a 15 minute warm up period is apparent when loading the data for 660, 661, 662 and 665 into GPS Speedreader:

![environment](img/20240618_66x.png)

After removing the first 15 minutes of data the wander and > 0.5 knot spikes are completely eliminated, leaving reliable data for the analysis:

![environment](img/20240618_66x_clean.png)



#### Day 1

Testing on 18 June used the older style mini motions, logging at 1 / 2 / 5 / 10 Hz.

The test was intended to run for 6 hours but was ended after 5 hours 20 minutes, thus providing slightly over 5 hours worth of actual data.

The last digit of the serial numbers indicates the logging rates and the motions were arranged as follows:

![20240618-layout](img/20240618_123348.jpg)

There was some cloud cover, but no rain was to be expected during the day. View to north, prior to testing:

![20240618-north](img/20240618_123120.jpg)

View to south, prior to testing:

![20240618-south](img/20240618_123127.jpg)

Visual inspection of the 5 hours of data in GPS Speedreader provides the following insights:

- 10 Hz data contains the most noise and the largest outliers.
- 5 Hz data exhibits less noise (and smaller outliers) than the 10 Hz data, but higher levels than the 1 Hz and 2 Hz data.
- 2 Hz data exhibits less noise than the 1 Hz data, which is slightly curious!
- 1 hour speeds and total distances can be used as a proxy for the noise levels.



My original working notes were as follows, whilst comparing various logging rates:

- 10 Hz noisier than 1Hz.
  - 0.4 knot spike present at 14:55:06.
  - Interestingly, sAcc higher for the 1Hz data, despite being more accurate.
- 10 Hz noisier than 5 Hz.
- 5 Hz noisier than 2 Hz.
  - Some spikes in 2 Hz data though.
- 2 Hz has worse spikes than 1 Hz.
  - But 1 Hz has a higher 60 min speed.
  - True of both pairs of devices.



Todo

- Calculate basic statistics for each of the logging rates - e.g. mean, median and max.



#### Day 2

Testing on 19 June used the newer style mini motions, logging at 1 / 2 / 5 Hz. It's not currently possible to configure them for 10 Hz.

The test was run for around 6 hours 20 minutes, providing over 6 hours worth of actual data, after excluding the warm up period.

The last digit of the serial numbers indicates the logging rates and they were arranged as follows:

![20240619-layout](img/20240619_115615.jpg)

The first 15 minutes should be regarded as the warm up, allowing for complete acquisition of the ephemerides. Much like the data from the previous day there is a fair amount of wander during the first 15 minutes, most likely due to use of the almanac data which is less precise than the ephemeris data.

Visual inspection of the remaining 6 hours of data in GPS Speedreader provides the following insights:

- 5 Hz data exhibits higher levels of noise (and larger outliers) than the 1 Hz and 2 Hz data.
- 2 Hz data exhibits higher levels of noise (and larger outliers) than the 1 Hz data.
- 1 hour speeds and total distances can be used as a proxy for the noise levels.



My original working notes were as follows, whilst comparing various logging rates:

- Loading 811 / 812 / 815 shows wander during the first 15 minutes.
- 5 Hz > 2 Hz > 1 Hz in terms of noise, but sacc suggests the opposite!



Todo

- Calculate basic statistics for each of the logging rates - e.g. mean, median and max.



#### Conclusions

The basic conclusions are as follows:

- Allowing for 15 minutes warm up / acquisition of the ephemerides should be factored into all comparative testing.
- Higher logging rates are prone to higher levels of noise.
- Further analysis might look into why sAcc is higher for the lower logging rates, which are actually less noisy!

