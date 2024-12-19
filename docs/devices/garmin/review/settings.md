## Garmin Settings

### Overview

The settings and app choice can greatly impact the watch performance when speed sailing. 

- Data recording
- GNSS setting
- Activity profile

Another important point is the use of FIT exports, and not GPX which is perhaps better known.



### Data Recording

The default recording frequency on a Garmin watch is known as "smart". This only records data once every few seconds and unsuitable for calculating speed results. The first thing to do on a Garmin watch is to set the recording frequency to "every 1 second".



### GNSS Setting

Testing has repeatedly shown standard GPS can perform badly on these watches, and comparable watches from COROS.

All systems or multi-band are much better and can be trusted to produce good quality results in a wide range of scenarios.

The two options are as follows:

- All systems = GPS L1, GLONASS, Galileo E1, and BeiDou B1I
- All systems + multi-band = GPS L1 + L5, GLONASS, Galileo E1 + E5a, and BeiDou B1I + B2a

n.b. The native Garmin activities also appear to use QZSS, which is additional to the 4 global systems.



### Activity Profile

It is easy to demonstrate the importance of an appropriate activity profile.

Firstly, windsurfing on a variety of Garmin watches when compared to the Motion.

- Forerunner 255 in red (Airoha), vivoactive 3 in green (MediaTek), vivoactive 4 in magenta (Sony), Motion in blue (u-blox).

The closeness of the Forerunner 255 (red) to the Motion (blue) is extremely impressive. Delays of 1 or 2 seconds affect the vivoactive 3 and 4 in this example, but this can happen with any Garmin watch. It's not a major issue per-se, just something to be aware of when comparing devices.

![img](img/activity-wsurf.png)



Secondly, stand up paddling (SUP) on a variety of Garmin watches when compared to the Motion (blue).

- Forerunner 255 in red (Airoha), vivoactive 3 in green (MediaTek), vivoactive 4 in magenta (Sony), Motion in blue (u-blox).

None of the watches produce an accurate recording during this test, because the activity profile applied heavy filtering. In the case of the SUP (and surf) activity profiles they lose a lot of detail and rarely capture the lower speeds of turns, thus being unsuitable for alpha 500.

![activity-sup](img/activity-sup.png)



Practically every single Garmin activity profile has been tested on multiple watches, but in the interests of brevity:

- Suitable activity profiles include windsurf, kiteboard and other.
- Unsuitable activity profiles include SUP, surf, sailing and boating.

The only real choice on Forerunner watches is "other" because they don't offer windsurf or kiteboard to users. However, Connect IQ apps can use any of the Garmin activity profiles (including windsurf and kiteboard), even if the watch itself does not offer them to the user. You can always change the activity in Garmin Connect, but that doesn't change the underlying data. 

Note: The bike activity profile may look ok for much of the time, but it implements its own unique filtering, related to walk / cycle detection.




