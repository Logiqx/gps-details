## Garmin Power Modes

Author: Michael George

Created: 29 Aug 2026

Updated: 10 Sep 2026



### Overview

There is currently some debate about the "new" satellite settings on the fenix 9.

![comparison](img/comparison.png)

This is a quick document which shares my thoughts, observations, and my current suspicions.



### Observations

Results of some basic using the windsurf activity; "normal" power mode, and various satellite modes:

| Satellite Mode       | Observations                                                 |        Equivalent        |
| -------------------- | ------------------------------------------------------------ | :----------------------: |
| **Max Accuracy**     | GPS L1, GLONASS, QZSS L1, Galileo E1, BeiDou B1I, GPS L5, Galileo E5a, BeiDou B2a, QZSS L5<br />Location updates every 1 second, adhering to "every second" recording |     All + Multi-Band     |
| **Normal**           | GPS L1, GLONASS, QZSS L1, Galileo E1, BeiDou B1I, GPS L5, Galileo E5a, BeiDou B2a, QZSS L5<br />Location updates every 1 second, adhering to "every second" recording<br /><br />Occasional downgrades during session:<br />- GPS L1, QZSS L1, Galileo E1, BeiDou B1I <br />- GPS L1, QZSS L1, Galileo E1, BeiDou B1I, GPS L5, Galileo E5a, BeiDou B2a, QZSS L5<br />- GPS L1, QZSS L1, Galileo E1, BeiDou B1I on "stop" | Auto Select<br />(SatIQ) |
| **Extended Battery** | GPS L1, Galileo E1<br />Location updates sometimes every 2 seconds, despite "every second" recording<br />Frequent mode change, but always GPS L1, Galileo E1 |      GPS + Galileo       |
| **Max Battery**      | GPS L1, Galileo E1<br />Location updates sometimes every 5 seconds, despite "every second" recording<br />Occasional mode change, but always GPS L1, Galileo E1 |      GPS + Galileo       |

Notes:

- "Extended Battery" and "Max Battery" use GPS + Galileo, but sometimes only record points every 2 or 5 seconds respectively.
- "Normal" and "Max Accuracy" both support multi-band, but "Normal" sometimes reverts to single-band (aka traditional SatIQ).
- "Normal" has been observed to stop using GLONASS, referred to as "constellation shedding" by the5krunner

Event type 44 often appears in files from the fenix 8 and fenix 9:

- Spotted in several files, typically after the first mode change / start up.
- Perhaps it is something to do with the ephemeris?
- The data value is a Garmin timestamp that can be up to 12 mins earlier.



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

There was initially some debate about the "new" satellite settings on the fenix 9, but these were my expectations:

| Satellite Mode       |    Equivalent    | Description in fenix 9 owner's manual                        |
| -------------------- | :--------------: | ------------------------------------------------------------ |
| **Max Accuracy**     | All + Multi-Band | Prioritizes maximum positioning accuracy while reducing battery life. This setting provides increased performance in challenging environments for short-duration activities. |
| **Normal**           |   Auto Select    | Balances average positioning accuracy and average battery life. This setting provides the best positioning accuracy while still prioritizing battery life. |
| **Extended Battery** |  GPS + Galileo   | Balances above-average battery life and below-average positioning accuracy. This setting provides the best battery life while still prioritizing positioning accuracy. |
| **Max Battery**      |  GPS + Galileo   | Prioritizes maximum battery life while reducing positioning accuracy. This setting records track points and sensor data less frequently for long-duration activities. |

Note: My interpretation differed from some popular reviewers on YouTube, with the exception of "Max Battery".



#### Max Accuracy

> Prioritizes maximum positioning accuracy while reducing battery life. This setting provides increased performance in challenging environments for short-duration activities.

I am fairly sure that "Max Accuracy" is the same as "All + Multi-Band", and not "Auto Select".

All + Multi-Band is described in more detail in the fenix 7 and fenix 8 manuals, and I am pretty sure that "Max Accuracy" will be the same.



#### Normal

> Balances average positioning accuracy and average battery life. This setting provides the best positioning accuracy while still prioritizing battery life.

I am fairly sure that "Normal" is the same as "Auto Select" (i.e. SatIQ), and not "All Systems".

n.b. The phrase "*best positioning accuracy while still prioritizing battery life*" also appears in the fenix 7 and fenix 8 manuals:

> **Auto Select** - Enables the watch to use SatIQ™ technology to dynamically select the best multi-band GNSS system based on your environment. The Auto Select setting offers the best positioning accuracy while still prioritizing battery life.



#### Extended Battery

> Balances above-average battery life and below-average positioning accuracy. This setting provides the best battery life while still prioritizing positioning accuracy.

It would appear that "Extended Battery" uses "GPS + Galileo", and not "GPS Only". I have observed 1 and 2 second recording intervals.

This has been confirmed by [GPS Events](../developer/gps-events.md) in the FIT files of activities using this power mode / satellite setting.



#### Max Battery

> Prioritizes maximum battery life while reducing positioning accuracy. This setting records track points and sensor data less frequently for long-duration activities.

It would appear that "Max Battery" uses "GPS + Galileo", and not "GPS Only".

I initially thought this might be the same as UltraTrac, but it records more frequently. I have observed 1 and 5 second recording intervals.

n.b. The phrase "*records track points and sensor data less frequently*" also appears in the fenix 7 and fenix 8 manuals:

> **UltraTrac** - Records track points and sensor data less frequently. Enabling the UltraTrac feature increases battery life but decreases the quality of recorded activities. You should use the UltraTrac feature for activities that demand longer battery life and for which frequent sensor data updates are less important.



### Next Steps

I believe that Garmin have renamed the fenix 9 satellite settings to match the names of power modes. This makes a lot of sense from a user perspective, because the average user doesn't really need to know the technical GNSS terms (or Garmin trademarks SatIQ and UltraTrac).

I also suspect that "GPS Only" has been ditched because the "Extended Battery" and "Max Battery" profiles use "GPS + Galileo".

This can all be confirmed by examining [GPS Events](../developer/gps-events.md) in FIT files from the fenix 9. It is also worth noting that the [battery estimates](https://docs.google.com/spreadsheets/d/1JgJJNWAgFoC59cPQnlPvR_oOnTK9rUo2PIFP8X9-_PE/edit?usp=sharing) go a long way to corroborating what I have said in this document. Further testing is still planned for this topic.

Whether or not Garmin are still using the Synaptics SYN4778 (like the fenix 8) remains to be seen. Hopefully [Ferhad Fidan](https://www.f-blog.info/garmin-fenix-8-review-but-only-the-internals/) will treat us to a future teardown of the fenix 9!
