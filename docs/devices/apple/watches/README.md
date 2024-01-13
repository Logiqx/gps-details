## Apple Watches

### Overview

This page looks at a number of sessions recorded on a selection of Apple Watches.

It looks at the difference between software-calculated speeds (simply using latitudes and longitudes), versus speeds calculated by the GNSS chipsets (almost certainly using the Doppler observables).

A brief insight into speed accuracy estimates is also provided, but detailed investigations and insights are yet to be documented.

It should be noted that different generations of Apple watch use different GNSS chipsets. This can result in notable differences in behavior, especially in relation to the so called "accuracy estimates", how they are calculated, and how they may be interpreted.



### Sessions

Some brief notes for a number of sessions.

- Apple Watch Ultra
  - [Apple Watch Ultra #1](wingfoil-230722-0826Z/README.md) recorded whilst Wingfoiling.
  - [Apple Watch Ultra #2](wingfoil-230722-1407Z/README.md) recorded whilst Wingfoiling - highlights the utility of speed accuracy estimates.
  - [Apple Watch Ultra #3](kitesurf-230723-0917Z/README.md) recorded whilst Kitesurfing - highlights the utility of speed accuracy estimates.
- Apple Series 8 45mm Cellular
  - [Apple Series 8 45mm Cellular #1](kiteboard-230722-1622Z/README.md) recorded whilst Kiteboarding - shows the speed accuracy estimate being inconsistent
- Apple Watches Series 5
  - [Apple Watches Series 5 #1](wingfoil-230722-1617Z/README.md) recorded whilst Wingfoiling - highlights the utility of speed accuracy estimates.
  - [Apple Watches Series 5 #2](wingfoil-230722-1720Z/README.md) recorded whilst Wingfoiling - highlights the complexity of speed accuracy estimates.


Notes:

- The charts are very basic in nature (e.g. simple legends and lack of axis labels), saving time during production.
- The data was recorded without any filters applied, thus showing the true nature of the raw GNSS data.
- Whilst standard filters can remove some of the spikes in software-calculated speeds, they are not guaranteed to be effective.
- Doppler-derived speeds are far more robust than software-calculated speeds that rely on longitudes and latitudes. 



### Thoughts

- Intelligent use of the speed accuracy estimate requires a fair bit of research, development and testing.
  - A simple / interim filter may be applied if the speed accuracy estimate exceeds 2 m/s, simply outputting a speed of zero.
- A further investigation should look into whether the cellular models of Apple Watches suffer from RF interference.



### Summary

- Speeds calculated in software from longitude and latitude can be extremely unreliable.
  - This can easily be seen by looking at the first graph on each of the session pages.
- Speeds calculated by the devices (almost certainly using the Doppler observables) are far more robust.
  - This can easily be seen by looking at the first three graphs on each of the session pages.
- Typical speed accuracy estimates can easily be determined for a specific GNSS receiver.
  - This can easily be seen by looking at the final graph on each of the session pages.
- General interpretation of speed accuracy estimates is a complex topic and has not been discussed.
  - Different chipsets calculate accuracy estimates in different ways, but they are always be useful. 
