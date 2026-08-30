## COROS APEX 4

### Quick Look

This is just a very quick summary of my initial observations, since I am very short of time.



### Missing GNSS Data

The APEX Pro, Apex 2, Apex 2 Pro, VERTIX, VERTIX 2, and VERTIX 2S capture some special data for the Speedsurfing activity:

- Number of Satellites
- Horizontal Dilution of Precision (HDOP)
- Course Over Ground (COG)

These data items are not present for Speedsurfing activities on the APEX 4.



#### Satellite Details

Number of Satellites and [Horizontal Dilution of Precision](https://en.wikipedia.org/wiki/Dilution_of_precision) (HDOP) are used for filtering, and particularly useful when erroneous speeds are recorded during a crash. Neither the number of satellites or HDOP are present in the FIT + GPX files of the APEX 4.



#### Course Over Ground

GNSS receivers calculate Speed Over Ground (SOG) and Course Over Ground (COG) to represent the two-dimensional velocity of the receiver. SOG and COG are both required to calculate results for various speed sailing competitions:

- International Speed Windsurfing Class
- Prince of Speed
- Weymouth Speed Week
- German Speed Championships

Since COG is not recorded by the APEX 4 it is unsuitable for the above competitions, and likely some others around the world.



### Loss of Precision

Unique speeds were extracted from a single APEX 4 session and sorted numerically. All speeds above 2.5 kt were in increments of 0.1 kt, but with some minor variation due to the various conversions being performed by the APEX 4.

I reverse-engineered the conversions and concluded that speeds in knots are likely converted to km/h by the APEX 4, prior to being recorded in m/s in the FIT and GPX. Floating point arithmetic causes some errors and they are compounded by floor and round functions.

The actual formula that produces the speeds found in APEX 4 files is `m/s = ROUND(FLOOR(knots * 1.85199999809265, 0.01) / 3.6, 3)`.

n.b. The crazy looking 1.85199999809265 is just the floating point representation of 1.852. I didn't really need to go to the effort of figuring out what is being done by the APEX 4, but I was curious as to why there were anomalies.

Putting aside why this is happening, restricting speeds to multiples of 0.1 knots is not acceptable. The speedsurfing world uses 2 decimal places for results, and loss of precision at the time of recording is an issue.



### Inconveniences

#### Minimum Speed

Speeds lower than 0.6 are not recorded by the APEX 4, which is not uncommon for smart watches.

This is somewhat unfortunate though, because it prevents any kind of [static testing](https://logiqx.github.io/ubx-cfg/testing/static-esp/) to assess the device accuracy.



#### Lack of Metadata

COROS watches do not record basic metadata such as the firmware version, or GNSS settings in the FIT file.

Due to all of the firmware issues in recent years, we requested this basic metadata in FIT files from COROS.



### Data Quality

Assessing the data quality of a new device is very time consuming, but a quick look saw some areas for concern.

There appears to be some filtering of the speed data, and times where the acceleration exceeded that of Luderitz.

I am not in a position to look at data from the APEX 4 in more detail at this time, likely not until late October.



### Summary

The absence of Number of Satellites, Horizontal Dilution of Precision (HDOP), and Course Over Ground (COG) is an issue.

Restricting speeds to multiples of 0.1 knots is also not acceptable. The FIT format represents speeds using 3 decimal places.

Establishing the reliability of the actual data is a much bigger activity, and not worthwhile until the above issues are resolved.

I am now going to have to park any further APEX 4 analysis, so that I can focus on my immediate priorities.



### Note to Self

Should I wish to find my analysis, including reverse-engineering of the speed conversions:

`C:\Users\mwgeo\OneDrive\Projects\GPS\Logs\Organised\COROS\APEX 4\Pernille Sanderhoff\2026-08-29, APEX 4`