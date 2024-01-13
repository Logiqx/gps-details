## Apple Watches

### Apple Watch Ultra #3

This session is from an Apple Watch Ultra, recorded whilst Kitesurfing.



#### Calculated Speed vs Doppler Speed

This graph illustrates the difference between speeds calculated by software using latitude + longitude (shown in blue), versus speeds calculated by the GNSS receiver itself (almost certainly) using the Doppler observables (shown in orange). Large spikes are clearly evident in speeds calculated from latitude and longitude (shown in blue), especially after a crash / fall.

Note: The units used for speeds are m/s but you can estimate the speed in knots by doubling the m/s.

![Calculated Speed vs Doppler Speed](img/cspd-dspd.png)

Ignoring occasions when the Doppler-derived speed is < 5 m/s (approximately 10 knots) some of the larger spikes in speeds calculated from latitude and longitude disappear, likely due to submersions of the GNSS receiver. However, when those spikes are removed it is still clear that speeds calculated from latitude and longitude are often higher than the Doppler-derived speeds.

![Calculated Speed vs Doppler Speed](img/cspd-dspd-5.png)



#### Doppler Speed

The Doppler speeds are quite plausible for this particular session, peaking at around 10 or 11 m/s (approximately 20-22 knots). Without having a trusted device as a benchmark, little can be said about the actual accuracy and thus the simple statement "plausible".

![Doppler Speed](img/dspd.png)



#### Doppler Speeds vs Accuracy Estimates

It has already been observed that crashes / falls will often cause spikes when speeds are calculated by software using latitudes and longitudes. It should be noted that Doppler speeds are generally far more robust than the speeds calculated from latitudes and longitudes, but they can (and will) be prone to inaccuracies when the tracking of GNSS signals is impaired.

The most common causes of accuracy issues affecting the Doppler-derived speeds will usually be the result of a submersion. This can be observed in the graph below, showing that speed (in)accuracy estimates are most affected during a fall / crash. These are almost certainly being caused by submersions, when the GNSS signal tracking is severely impaired (or lost entirely).

![Doppler Speed vs Accuracy](img/dspd-dspda.png)



#### Doppler Speed Accuracy during Crashes

To see how the speed (in)accuracy estimates can be affected during crashes / falls take a look at the graph below, which compares the speed accuracy estimate at all times, versus when the speed is over 5 m/s (approximately 10 knots).

The chart shows how the speed accuracy estimate is relatively stable under normal circumstances, such as when on the rider is travelling at a speed in excess of 5 m/s (approximately 10 knots).

The worst speed accuracy estimate when travelling at speed was over 3 m/s (over 6 knots) and was recorded at around point 1622. This was almost certainly a submersion during a fall / crash and the speed at this time should be deemed invalid.

Note: The use of 5 m/s is somewhat arbitrary but works well for the purposes of this illustration.

![Doppler Speed vs Accuracy](img/dspda.png)



#### Typical Doppler Speed Accuracy

It is possible to determine "typical" speed (in)accuracy estimates for this GNSS receiver when the rider is exceeding 5 m/s (approximately 10 knots). During this session the median speed accuracy estimate is 1.11, mean is 1.14 and σ is 0.24.

It should be noted that there are a fairly significant number of occasions where the speed accuracy estimate is worse than normal, between 1.5 m/s and 2.0 m/s (roughly 3 to 4 knots). 

As mentioned earlier, the worst speed accuracy estimate when travelling at speed was over 3 m/s (over 6 knots) and was recorded at around point 1622. This was almost certainly a submersion during a fall / crash.

There is perhaps a question of how this device was being worn, or whether the cellular capability is affecting the GNSS performance?

![Doppler Speed vs Accuracy](img/dspda-5.png)



#### Likely Spike

It has already been mentioned that the worst speed accuracy estimate exceeded 3 m/s (over  6 knots). When looking at this region of the track in detail it appears that this was likely to be a spike.

The doppler-derived speed (shown in blue) was falling before rising for a period and then falling again. What makes this suspicious is that the speed accuracy estimate (shown in orange) got worse during this period.

For much of this time the speed accuracy estimate exceeded 2 m/s (4 knots) but there was a single reading where it dropped below 2 m/s, before rising again afterwards.   

![Spike](img/spike.png)



#### Summary

This is a very brief piece of analysis for a single session which serves to illustrate some key points. It is by no means a comprehensive analysis and it does not compare this specific device against a known / reliable benchmark device.

However, simple takeaways are as follows:

- Speeds calculated in software from longitude and latitude can be extremely unreliable.
- Speeds calculated by the device itself (almost certainly using the Doppler observables) are far more robust.
- Typical speed accuracy estimates can easily be determined for this specific GNSS receiver.
- General interpretation of speed accuracy estimates is a complex topic and has not been discussed in detail.
