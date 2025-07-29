## Waterspeed - Best Speeds #3

### Overview

This is an indoor skating session (open roof) using the windsurfing mode of a Garmin epix Pro.

- Original FIT was manually imported using the Waterspeed web app
- GPX was created using [GPS Wizard](https://logiqx.github.io/gps-wizard/) and conforms to the GPX 1.0 schema, including the original speed data

The interesting thing about this session is that the environment (large ice skating rink with no roof) impacts positional accuracy far more than speed accuracy. The difference in the resultant speeds is useful for comparative purposes.



### Quick Comparison

It is notable that the scales of the speed graph differ a lot, which is due to the poor accuracy of the position-derived speeds.

This is to be expected if Waterspeed is using Doppler-derived speeds on the left (FIT) and position-derived speeds on the right (GPX).

![comparison-1](img/comparison-1.png)



Some of the headline figures differ significantly - e.g. Max Speed of 11.0 kts (FIT) vs 21.2 kts (GPX).

This is to be expected if Waterspeed is using Doppler-derived speeds on the left (FIT) and position-derived speeds on the right (GPX).

![comparison-2](img/comparison-2.png)



The Tacks & Jibes statistics differ, which will likely be due to use of speeds present in the FIT and use of positional data in the GPX.

Almost all of the Best Speeds are identical, which wouldn't be the case if the Doppler-derived speeds were being used for analysis of the FIT.

It is also worth noting the 2 sec result of 19.7 kts (FIT) is significantly higher than the max of 11.0 kts (GPX).

![comparison-3](img/comparison-3.png)



In this instance the 5 sec and 10 sec results differ for the FIT and GPX, suggesting some involvement of the Doppler-derived speeds for analysis of the FIT file.

It is unclear how the 5 sec and 10 sec are being calculated because 11.0 kts is somewhere between the correct Doppler-derived speeds and position-derived speeds reported by the de-facto speed sailing application(s).

The alpha speeds are identical for both files and appear to be calculated from the positional data. The speedsailing community use the Doppler-derived speeds for alpha results.



### GPX Import

It is worth mentioning that Waterspeed should import speed data from GPX files, when present.

All of the stats should be identical regardless of whether a FIT or GPX is imported into Waterspeed, so long as speed is present in the GPX.

Full details about the various ways that speed can appear in GPX files is available via this [link](https://logiqx.github.io/gps-wizard/gpx/speed.html).



### Summary

This session showed that Doppler-derived speeds are being used in some places, but potentially ignored for most of the Best Speeds, except perhaps 5 sec and 10 sec.

Further testing explores this in more detail.



### Links

The sessions can be accessed via a browser.

- [FIT](https://waterspeedapp.web.app/activity/-OWEwziwwSqRgElt8goX)
- [GPX](https://waterspeedapp.web.app/activity/-OWExcDhg_suFynaad8b)