## Apple Watches

### Overview

This page looks at a number of sessions recorded on a selection of Apple Watches.

It looks at the difference between software-calculated speeds (simply using latitudes and longitudes), versus speeds calculated by the GNSS chipsets (almost certainly using the Doppler observables).

A brief insight into speed accuracy estimates is also provided, but detailed investigations and insights are yet to be documented.

It should be noted that different generations of Apple watch use different GNSS chipsets. This can result in notable differences in behavior, especially in relation to the so called "accuracy estimates", how they are calculated, and how they may be interpreted.



### Sessions

Some brief notes for a number of sessions, including some graphs which illustrate some key points:

- Apple Watch Ultra
  - [Apple Watch Ultra #1](wingfoil-230722-0826Z/README.md) recorded whilst Wingfoiling.
  - [Apple Watch Ultra #2](wingfoil-230722-1407Z/README.md) recorded whilst Wingfoiling - highlights the utility of speed accuracy estimates.
  - [Apple Watch Ultra #3](kitesurf-230723-0917Z/README.md) recorded whilst Kitesurfing - highlights the utility of speed accuracy estimates.
  - [Apple Watch Ultra #4](wingfoil-230723-1322Z/README.md) recorded whilst Wingfoiling - highlights the utility of speed accuracy estimates.
- Apple Watch SE 40 mm Cellular
  - [Apple Watch SE 40 mm Cellular #1](kiteboard-230723-1205Z/README.md) recorded whilst Kiteboarding (or maybe Wingfoiling).
- Apple Watch SE 44 mm
  - [Apple Watch SE 44 mm #1](kiteboard-230723-1208Z/README.md) recorded whilst Kiteboarding.
- Apple Series 8 45 mm Cellular
  - [Apple Series 8 45 mm Cellular #1](kiteboard-230722-1622Z/README.md) recorded whilst Kiteboarding - general issues are possibly evident?
- Apple Watches Series 5
  - [Apple Watches Series 5 #1](wingfoil-230722-1617Z/README.md) recorded whilst Wingfoiling - highlights the utility of speed accuracy estimates.
  - [Apple Watches Series 5 #2](wingfoil-230722-1720Z/README.md) recorded whilst Wingfoiling - highlights the complexity of speed accuracy estimates.
- Unidentified Apple Watch
  - [Unidentified Apple Watch](kiteboard-230723-1712Z/README.md) - slightly difficult to make sense of regarding accuracy!



Notes:

- The charts are very basic in nature (e.g. simple legends and lack of axis labels), saving time during production.
- The data was recorded without any filters applied, thus showing the true nature of the raw GNSS data.
- Whilst standard speed sailing filters can remove spikes in the software-calculated speeds, they are not always effective.
- Doppler-derived speeds are far more robust than software-calculated speeds that rely on longitudes and latitudes.
- Effective use of the speed accuracy estimates requires more research. 



### Thoughts

- Intelligent use of the speed accuracy estimate requires a fair bit of research, development and testing.
- Interim filtering may be applied when the speed accuracy estimate exceeds 1.5 m/s, simply outputting a speed of zero.
  - This filter will detect a number of the spikes that are able to slip through the standard acceleration filters, etc.

- A further investigation might wish to look into whether the cellular models of Apple Watches suffer from RF interference?



### Summary

- Speeds calculated in software from longitude and latitude can be extremely unreliable.
  - This can easily be seen by looking at the first graph on each of the session pages.
- Speeds calculated by the devices (almost certainly using the Doppler observables) are far more robust.
  - This can easily be seen by looking at the first three graphs on each of the session pages.
- Typical speed accuracy estimates can easily be determined for a specific GNSS receiver.
  - What is deemed "typical" will vary depending on the generation of the watch, and more specifically the GNSS chipset. 
- General interpretation of speed accuracy estimates is a complex topic and has not been discussed in detail.
  - Different chipsets calculate accuracy estimates in different ways, but they all have practical uses. 
