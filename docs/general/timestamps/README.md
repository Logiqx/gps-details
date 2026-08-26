## GNSS Timestamps

Author: Michael George

Created: 14 Aug 2026



### Background

When loading GNSS data into software such as GPSResults, or GPS Speedreader the timestamps will typically show 3 decimal places. 1 Hz data will typically have timestamps ending .000, and 5 Hz data will typically have timestamps ending in .000 .200 .400 .600 .800. These timestamps originate from the GNSS [navigation solution](https://en.wikipedia.org/wiki/Satellite_navigation_solution), which calculates Position, Velocity, and Time (PVT). The receiver will do it's best to ensure that each navigation solution is calculated at the desired time, but the precise intervals between navigation solutions are dictated by the local clock.

Receivers generating 1 Hz output will essentially calculate a navigation solution every 1000 ms (according to the local clock), and receivers generating 5 Hz output will essentially calculate a navigation solution every 200 ms. Over time the local clock will [drift](https://en.wikipedia.org/wiki/Clock_drift) from the reference clock (i.e. GPS time), but how the drift is handled varies depending on the manufacturer or the GNSS receiver. The accumulated difference between the receiver clock and reference clock is referred to as Clock Bias and GNSS receivers will typically aim to keep it under 1 ms by applying periodic adjustments.



### SiRF

The Locosys GT-11 used the SiRF Star II, and the clock drift was really quite extreme. Roughly once every 16 seconds the timestamps increased by 0.999 seconds (instead of 1.000), and there were no periodic adjustments. The session might begin with timestamps ending with .888 s, but around 16 seconds later they would be ending .887, and 16 seconds later they would be .886. Although the SiRF chip was aiming to calculate a navigation solution once every 1000 ms, it was in reality doing it once every 999.94 ms. The SBN format includes the clock drift and bias, so they can be studied.

The Locosys GT-31 used the SiRF Star III, and the clock drift was near-identical to the GT-11. The clock drift and bias reported in the SBN files was almost identical to the GT-11, yet the timestamps were always ended with .000. So what was going on inside the SiRF Star III to ensure the navigation solutions were always calculated on a .000 boundary? Whilst the desired interval of 1000 ms was really 999.94 ms, the SiRF Star III will likely be making periodic adjustments, and occasionally be using an interval of 1001 ms to introduce a slight delay, and maintain alignment with .000.



### u-blox

The u-blox receivers provide timestamps which have nanosecond precision, and essentially need to be rounded to the nearest millisecond. Clock drift is still evident in devices such as the ESP GPS, but it is much smaller than the Locosys devices. The behaviour of the u-blox chip is also clearly evident when looking at the timestamps in UBX files from the ESP GPS. Looking at a 5 Hz session shows timestamp intervals of around 200.000011 ms, so running slow (but only very slightly). Periodic adjustments bring the timestamps back into line with the 200 ms boundaries, evident in the ns timestamps.



### Broadcom

Apple watches use GNSS chipsets from Broadcom and just like SiRF and u-blox the consequences of clock drift are evident in the PVT data. It is clear that the the Broadcom chips are trying to calculate navigation solutions on .000 second boundaries, but they regularly experience drift in excess of one millisecond. The majority of timestamps are on .000 and .999 boundaries, but it is also common to see timestamps between 0.995 and .005. This is a huge over-simplification, and the reality is that timestamps can routinely be out by tens (or even hundreds) of milliseconds when signals are lost.

Perhaps the most important thing to recognise is that truncating the Broadcom timestamps, and discarding the millisecond portion is problematic. One of the first things that I spotted in data from an application for Apple Watches was "duplicate" timestamps. The reality was that timestamps ending with .999 were being treated the same as timestamps ending with .001. The original timestamps were essentially 1 second apart, but the effect of truncating the timestamps was to artificially introduce duplicate timestamps. A quick fix was to round to the nearest second, not truncate.



### Synaptics

The newer Garmin watches use the Synaptics SYN4778 which appears to be the Broadcom [BCM4778](https://logiqx.github.io/gps-details/chipsets/broadcom/), produced under license. This being the case, Garmin watches will also be presented with timestamps with the Broadcom behaviour, and thus prone to duplication if the millisecond portion is simply discarded. The Garmin [Toybox.Position.Info](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position/Info.html) contains the GPS timestamp as the number of seconds since the UNIX epoch, so Garmin could very easily be discarding the millisecond portion of the Synaptics timestamps, just like the app on Apple watches. Truncation WILL lead to duplicated timestamps.

The 100 m glitch observed in APPro suggests that duplicate GPS timestamps are being presented via Toybox.Position.Info, and it is quite likely that this will be due to the way that Garmin handles the milliseconds. I strongly suspect that Garmin are simply truncating the Synaptics timestamps, and thus APPro is being provided with duplicate GPS timestamps. The best way to raise this with Garmin poses an interesting question, and perhaps would benefit from a proper write up of what I observed in the Broadcom data. I will look to do this as soon as possible, but I am quite busy right now.



### Wrap Up

I have a proper article planned on this topic with some interesting examples, and analysis. This document was written as explanation for the duplicate "when" values from Garmin watches, presented as duplicate timestamps to APPro. 

We also need to bear in mind that the timestamps in Garmin FIT files are not based on GPS times (position.info.when), so even if the there are two position info objects with duplicate timestamps there will be no evidence in the FIT file. Garmin watches use their own internal clock for FIT timestamps, which kind of makes sense given they are combining data from multiple sources, and GPS is not always present. This is evident with the timing issue where lat, lon, speed can be seen to repeat (or be completely skipped), but the FIT timestamp advances by 1 second, without missing a beat.



### References

- [GNSS Receiver Clocks](https://insidegnss.com/gnss-receiver-clocks/) - Inside GNSS, 14 Mar 2011