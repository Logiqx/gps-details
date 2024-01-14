## Apple Watches

### Speed Accuracy Estimates

Intelligent use of the speed accuracy estimate requires a fair bit of research, development and testing. A brief insight into speed accuracy estimates is provided on other pages, but detailed investigations and insights are yet to be documented.

It should be noted that different generations of Apple watch use different GNSS chipsets. This can result in notable differences in behavior, especially in relation to the so called "accuracy estimates", how they are calculated, and how they may be interpreted.

More often than not, GNSS accuracy estimates (horizontal accuracy, vertical accuracy, speed accuracy, etc) can be regarded as 1-sigma (or RMS) accuracy estimates. For example, given a speed of 10 m/s (20 knots) and speed accuracy of 2 m/s there is supposed to be a 68% chance that the true speed is between 8 m/s and 12 m/s (16 knots and 24 knots).

The reality of the situation is that different GNSS chipsets calculate their accuracy estimates using their own proprietary methods, and the actual values cannot be taken literally. What the accuracy estimates provide is a means to spot inaccuracies, not quantify or measure them exactly.



### GNSS Chipsets

Different generations of Apple watch use the following GNSS chipsets:

- Series 6 (Sep 2020) - [confirmed](https://www.reverse-costing.com/teardown-notes/apple-watch-series-6-evolution/) as Broadcom BCM47754
  - SE "1st Gen" (Sep 2020) - suspect Broadcom BCM47754, just like the Series 6

- Series 7 (Oct 2021) - [confirmed](https://iphonewired.com/news/268068/) as Broadcom BCM47764
- Series 8 (Sep 2022) - suspect Broadcom (e.g. BCM47764, BCM47765 or BCM4778)
  - SE "2nd Gen" (Sep 2022) - suspect Broadcom (e.g. BCM47764, BCM47765 or BCM4778)
  - Ultra (Sep 2022) - suspect Broadcom (e.g. BCM47764, BCM47765 or BCM4778)
- Series 9 (Sep 2023) - completely unknown
  - Ultra 2 (Sep 2023) - completely unknown

It should be noted that Apple phones since 2016 (iPhone 7) have been using GNSS chipsets from Intel and Qualcomm. They are likely to differ quite considerably from the Broadcom chipsets in the Apple watches.



### Interim Filter

Interim filtering may be applied when the speed accuracy estimate exceeds 1.5 m/s, simply outputting a speed of zero.
- This filter will detect a number of the spikes that are able to slip through the standard acceleration filters, etc.
- This filter will provide some benefits for the 2022 models such as the Series 8, SE (Gen 2), and Ultra (Gen 1).
- This filter will not provide any benefits for the 2019 models such as the Series 5, or earlier models.

It isn't possible to say whether the filter is suitable for several models of Apple watch, due to the absence of any data:

- The 2020 and 2021 models such as the Series 6, Series 7, and SE (Gen 1).
- The 2023 models such as the Series 8, and Ultra 2.

Given the uncertainty around models other than the ones from 2019 (Series 5) and 2022 (Series 8), caution should probably be applied. Without any data for 2020, 2021, and 2023 models it is impossible to assess the suitability of this simple filter.



### Approved Devices

Apple phones use different GNSS chipsets to the watches and the antennas will also be different. If an app such as Waterspeed can provide data from multiple generations of watches and phones, they should be considered individually. Some watches may prove to be reliable enough to be an approved device, some may not. The same is also true of Apple phones, but without suitable test data it is impossible to determine which are good enough, and which are not good enough.  

- It can be seen from these pages that the Apple Watch 5 may have a tendency for false readings / spikes which would need filters specific to that device. The simplest approach would be to regard it as unapproved, rather than spend lots of time on it. 
- The 2022 devices may produce decent quality data and an interim filter (speed accuracy < 1.5 m/s) will certainly help to improve the data quality. How they compare to the benchmark devices based on SiRF or u-blox chipsets is yet to be seen.
- 2020, 2021 and 2023 devices are a complete unknown at this moment in time. An assessment is required, checking the suitability of the interim speed accuracy filter, and the general accuracy of the watches themselves. 

A possible approach to consider is to go live, then evaluate the data quality before approving specific devices?



### Identification of Devices

The `<trk>` element of GPX contains a `<src>` element for the device type - e.g. "Apple Watch Series 8".

This is the obvious way to specify which device was used during the session.
