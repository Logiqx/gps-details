## Garmin Power Modes

Author: Michael George

Created: 29 Aug 2026

Updated: 14 Sep 2026



### Introduction

There is currently some debate about the "new" satellite settings on the fenix 9.

![comparison](img/comparison.png)

This document shares my observations after some basic investigations.



### Brief History

Garmin have historically allowed users to choose specific [GNSS](https://en.wikipedia.org/wiki/Satellite_navigation) configurations.

- GPS only
- GPS + GLONASS
- GPS + GALILEO
- All Systems
- All Systems + Multi-Band

With the introduction of multi-band, Garmin also provided a feature that called [SatIQ](https://www.garmin.com/en-GB/blog/garmin-engineer-talks-satiq-longer-battery-life-same-precise-tracking/) which can dynamically switch between "all systems" and "all systems + multi-band". How SatIQ operates under the covers is Garmin proprietary, but my expectation is that they were either using the [accuracy estimates](https://medium.com/@mikeg888/gnss-accuracy-estimates-74a04ce20608) from the GNSS chipset (Airoha / Synaptics), or the [pseudo range residuals](https://gssc.esa.int/navipedia/index.php/GNSS_Measurements_Modelling) themselves. Whatever the logic, the effect is that the GNSS receiver switches between "all systems" and "all systems + multi-band" based on the quality of the final solution.



### New Approach

With the advent of the fenix 9 and fenix 9 Pro, Garmin have had a rethink about GNSS configuration. Everything is now using SatIQ (albeit with more variety) and the names for the [satellite settings](https://www8.garmin.com/manuals/webhelp/GUID-708A8F4D-9A78-49CF-9528-DE109BBCC472/EN-US/GUID-0E83C645-3795-4505-B5C1-2B97415DFA80.html) are more consistent with the names for the [activity power modes](https://www8.garmin.com/manuals/webhelp/GUID-708A8F4D-9A78-49CF-9528-DE109BBCC472/EN-US/GUID-A98507AE-C8FE-4CE7-A441-417DEAC99C65.html).

- Max Accuracy (aka Performance)
- Normal (aka Balanced)
- Extended Battery
- Max Battery

It is possible to diagnose what is actually occurring under the covers thanks to the excellent [FIT File Viewer](https://www.fitfileviewer.com/). There is a lot of interesting metadata inside the FIT files produced by Garmin devices, and some time ago I reverse-engineered the [GPS mode changes](https://logiqx.github.io/gps-details/devices/garmin/developer/gps-events.html). Since these findings have been incorporated into the FIT File Viewer, we observe when a device changes its GNSS configuration. 

What is immediately apparent when doing some basic testing of the fenix 9 Pro is that "GPS only" has gone, and so has the basic  "All Systems". The new satellite settings include the following:

- All + Multi-Band
- Auto Select - All + Multi-Band, or All Systems
- GPS + Galileo

Note: The auto select mode sometimes stops using GLONASS which is referred to as "constellation shedding" by [the5krunner](https://the5krunner.com/).

It is also important to note the battery saving modes can also reduce the recording frequency of track points, despite the "every second" recording interval. The "extended battery" mode sometimes records track points every 2 seconds,  and "max battery" sometimes records track points every 5 seconds



### Detailed Observations

Results of some basic testing using the windsurf activity; "normal" power mode, and various satellite modes:

| Satellite Mode       | Observations                                                 |        Equivalent        |
| -------------------- | ------------------------------------------------------------ | :----------------------: |
| **Max Accuracy**     | GPS L1, GLONASS, QZSS L1, Galileo E1, BeiDou B1I, GPS L5, Galileo E5a, BeiDou B2a, QZSS L5<br />Location updates every 1 second, adhering to "every second" recording |     All + Multi-Band     |
| **Normal**           | GPS L1, GLONASS, QZSS L1, Galileo E1, BeiDou B1I, GPS L5, Galileo E5a, BeiDou B2a, QZSS L5<br />Location updates every 1 second, adhering to "every second" recording<br /><br />Occasional downgrades during session:<br />- GPS L1, QZSS L1, Galileo E1, BeiDou B1I <br />- GPS L1, QZSS L1, Galileo E1, BeiDou B1I, GPS L5, Galileo E5a, BeiDou B2a, QZSS L5<br />- GPS L1, QZSS L1, Galileo E1, BeiDou B1I on "stop" | Auto Select<br />(SatIQ) |
| **Extended Battery** | GPS L1, Galileo E1<br />Location updates sometimes every 2 seconds, despite "every second" recording<br />Frequent mode change, but always GPS L1, Galileo E1 |      GPS + Galileo       |
| **Max Battery**      | GPS L1, Galileo E1<br />Location updates sometimes every 5 seconds, despite "every second" recording<br />Occasional mode change, but always GPS L1, Galileo E1 |      GPS + Galileo       |

Notes:

- "Extended Battery" and "Max Battery" use GPS + Galileo, but sometimes only record points every 2 or 5 seconds respectively.
- "Normal" and "Max Accuracy" both support multi-band, but "Normal" sometimes reverts to single-band. This is just like the traditional SatIQ on older devices.
- "Normal" has been observed to stop using GLONASS, referred to as "constellation shedding" by the5krunner

Event type 44 can also be observed in FIT files from the fenix 8, fenix 8 Pro, fenix 9, and fenix 9 Pro:

- Spotted in several files, typically shortly after start up.
- The data value is a Garmin timestamp that can be up to 12 mins earlier.
- Perhaps it is something to do with acquisition of the latest [ephemeris](https://gssc.esa.int/navipedia/index.php/GPS_Navigation_Message)?

I have yet to figure out what GPS event 25 represents, but 2 and 3 are simply loss of the GNSS signals and re-acquisition.



### Power Modes

Garmin introduced the concept of "[power modes](https://support.garmin.com/en-GB/?faq=UKdcLjyUEZ4xdiX5HWzgp7)" for the fenix 6, and they have been present on all subsequent models of the fenix.

The default satellite settings for each of the power modes are as follows:

|                                |  fenix 6  |         fenix 7          |         fenix 8          |     fenix 9      |
| ------------------------------ | :-------: | :----------------------: | :----------------------: | :--------------: |
| **Normal / Balanced**          |     -     | Auto Select <sup>1</sup> | Auto Select <sup>1</sup> |      Normal      |
| **Extended**                   |     -     |         GPS Only         |         GPS Only         | Extended Battery |
| **Max Battery**                | UltraTrac |  UltraTrac <sup>2</sup>  |  UltraTrac <sup>2</sup>  |   Max Battery    |
| **Max Accuracy / Performance** |     -     |     All + Multi-Band     |     All + Multi-Band     |   Max Accuracy   |

Garmin appear to have renamed the satellite settings on the fenix 9 to be more consistent with the corresponding power modes.

Notes about some Garmin trademarks:

1. [SatIQ](https://www.garmin.com/en-GB/blog/garmin-engineer-talks-satiq-longer-battery-life-same-precise-tracking/) will "auto select" the right satellite mode for your environment
2. [UltraTrac](https://www8.garmin.com/manuals/webhelp/forerunner935/EN-US/GUID-AFF93BBA-2F68-4C2A-9667-DE3168B3C49C.html) will only record track points and sensor data once per minute



### Satellite Settings

There was initially some debate about the "new" satellite settings on the fenix 9, but these are my observations:

| Satellite Mode       |    Equivalent    | Description in fenix 9 owner's manual                        |
| -------------------- | :--------------: | ------------------------------------------------------------ |
| **Max Accuracy**     | All + Multi-Band | Prioritizes maximum positioning accuracy while reducing battery life. This setting provides increased performance in challenging environments for short-duration activities. |
| **Normal**           |   Auto Select    | Balances average positioning accuracy and average battery life. This setting provides the best positioning accuracy while still prioritizing battery life. |
| **Extended Battery** |  GPS + Galileo   | Balances above-average battery life and below-average positioning accuracy. This setting provides the best battery life while still prioritizing positioning accuracy. |
| **Max Battery**      |  GPS + Galileo   | Prioritizes maximum battery life while reducing positioning accuracy. This setting records track points and sensor data less frequently for long-duration activities. |

Note: These observations differ from the speculation of some reviewers on YouTube.



#### Max Accuracy

fenix 9 manual:

> **Max Accuracy** - Prioritizes maximum positioning accuracy while reducing battery life. This setting provides increased performance in challenging environments for short-duration activities.

The "Max Accuracy" setting is the same as "All + Multi-Band" setting on previous devices, and not "Auto Select".



#### Normal

fenix 9 manual:

> **Normal** - Balances average positioning accuracy and average battery life. This setting provides the **best positioning accuracy while still prioritizing battery life**.

The "Normal" setting is near-identical to "Auto Select" (i.e. SatIQ) on previous devices, and not "All Systems".

The description of "Normal" is also very similar to the description of "Auto Select" in the fenix 7 and fenix 8 manuals:

> **Auto Select** - Enables the watch to use SatIQ™ technology to dynamically select the best multi-band GNSS system based on your environment. The Auto Select setting offers the **best positioning accuracy while still prioritizing battery life**.

One noticeable difference is that SatIQ sometimes drops GLONASS when using the "Normal" (aka "Balanced") mode.



#### Extended Battery

fenix 9 manual:

> **Extended Battery** - Balances above-average battery life and below-average positioning accuracy. This setting provides the best battery life while still prioritizing positioning accuracy.

The "Extended Battery" setting uses "GPS + Galileo", and not "GPS Only".

It can also use either 1 or 2 second recording interval for track points, regardless of the "every second" setting.

This has been confirmed by [GPS Events](../developer/gps-events.md) in the FIT files of activities using this power mode / satellite setting.



#### Max Battery

fenix 9 manual:

> **Max Battery** - Prioritizes maximum battery life while reducing positioning accuracy. This setting **records track points and sensor data less frequently** for long-duration activities.

The "Max Battery" setting uses "GPS + Galileo", and not "GPS Only".

I initially expected "Max Battery" to be the same as UltraTrac, but it records more frequently.

It can use either 1 or 5 second recording interval for track points, regardless of the "every second" setting.

n.b. The phrase "*records track points and sensor data less frequently*" also appears in the fenix 7 and fenix 8 manuals:

> **UltraTrac** - **Records track points and sensor data less frequently**. Enabling the UltraTrac feature increases battery life but decreases the quality of recorded activities. You should use the UltraTrac feature for activities that demand longer battery life and for which frequent sensor data updates are less important.



### GPS Software

The GPS software version can sometimes give some insight into whether devices are using GNSS chipsets from the same manufacturer. The fenix 9 and fenix 9 Pro were released with GPS software 11.02 which caused some speculation about there possibly being a new GNSS chipset. However, [recent beta software](https://forums.garmin.com/beta-program/fenix-8-series/f/announcements/439016/beta-version-23-11--check-for-updates-only) for the fenix 8 (and similar models) was already using GPS software 11.02.

Right now there is no reason to suspect a significant change in the GNSS chipset, although not impossible. The new satellite settings are essentially a software implementation and extension of the existing SatIQ. I suspect that Garmin will not apply these same modes to existing models, even if it is technically possible. Many users would find it confusing and no doubt there would be a large number of complaints. 



### Summary

With the advent of the fenix 9 and fenix 9 Pro, Garmin have had a rethink about GNSS configuration. Everything is now using SatIQ (albeit with more variety) and the names for the [satellite settings](https://www8.garmin.com/manuals/webhelp/GUID-708A8F4D-9A78-49CF-9528-DE109BBCC472/EN-US/GUID-0E83C645-3795-4505-B5C1-2B97415DFA80.html) are more consistent with the names for the [activity power modes](https://www8.garmin.com/manuals/webhelp/GUID-708A8F4D-9A78-49CF-9528-DE109BBCC472/EN-US/GUID-A98507AE-C8FE-4CE7-A441-417DEAC99C65.html). This makes a lot of sense from a user perspective, because the average user doesn't really need to know the technical GNSS terms (or Garmin trademarks SatIQ and UltraTrac).

"GPS Only" appears to have been ditched because the "Extended Battery" and "Max Battery" profiles both use "GPS + Galileo". However, I wouldn't entirely rule out the possibility of those settings downgrading to "GPS Only" in some scenarios. 

The above findings were confirmed by the [GPS Events](../developer/gps-events.md) inside FIT files from the fenix 9 Pro. It is also worth noting that the [battery estimates](https://docs.google.com/spreadsheets/d/1JgJJNWAgFoC59cPQnlPvR_oOnTK9rUo2PIFP8X9-_PE/edit?usp=sharing) go a long way to corroborating these findings, and they were helpful prior to any testing.

Whether or not Garmin are still using the Synaptics SYN4778 (like the fenix 8) remains to be seen. Since the fenix 8 and fenix 9 use the same GPS software version (currently 11.02), I suspect they are still using a Synaptics chipset.

Hopefully [Ferhad Fidan](https://www.f-blog.info/garmin-fenix-8-review-but-only-the-internals/) will treat us to a future teardown of the fenix 9!



### Links

- [Fenix 9 Position.CONFIGURATION_GPS_xxxxx not supported](https://forums.garmin.com/developer/connect-iq/i/bug-reports/fenix-9-position-configuration_gps_xxxxx-not-supported)
- [fenix 8 Pro - location events stopped mis-session - SW 23.28, GPS 11.02](https://forums.garmin.com/beta-program/fenix-8-series/f/community-discussion/443670/fenix-8-pro---location-events-stopped-mis-session---sw-23-28-gps-11-02/2061662)
