## Apple Watches

### Overview

This page looks at a number of wingfoiling and kiteboarding sessions recorded on a selection of Apple Watches.

It looks at the difference between software-calculated speeds (simply using latitudes and longitudes), versus speeds calculated by the GNSS chipsets (almost certainly using the Doppler observables).

A brief insight into speed accuracy estimates is also provided, but detailed investigations and insights are yet to be documented.

It should be noted that different generations of Apple watch use different GNSS chipsets. This can result in notable differences in behavior, especially in relation to the so called "accuracy estimates", how they are calculated, and how they may be interpreted.



### Topics

The following pages summarise the GNSS data from Apple watches: 

- [Speed Comparisons](speed.md)
- [Doppler-Derived Speeds](doppler.md)
- [Speed Accuracy Estimates](accuracy.md)

The individual sessions each have further summaries which contain some additional graphs:

- [Session summaries](sessions.md)



### Conclusions

- Speeds calculated in software from longitude and latitude can be extremely unreliable.
  - This can easily be seen by looking at the first graph on each of the session pages.
- Speeds calculated by the devices (almost certainly using the Doppler observables) are far more robust.
  - This can easily be seen by looking at the first three graphs on each of the session pages.
- Typical speed accuracy estimates can easily be determined for a specific GNSS receiver.
  - What is deemed "typical" will vary depending on the generation of the watch, and more specifically the GNSS chipset. 
- General interpretation of speed accuracy estimates is a complex topic and has not been discussed in detail.
  - Different chipsets calculate accuracy estimates in different ways, but they all have practical uses. 
- Watch / phone models should be included in the track data to determine if they "approved" or not.
  - The `<trk>` element of GPX contains a `<src>` element for the device type - e.g. "Apple Watch Series 8".
