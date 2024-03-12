## Motion Mini

### Fix Type

#### Background

The following screenshot is taken from a wingfoiling session at Brogborough Lake on 26 October 2022. It nicely illustrates what happens when the u-blox GNSS chipset loses its lock on the satellites after a sudden crash.

Essentially the u-blox chipset reports the speed over ground (SOG) and course over ground (COG) as constant, and reports position changes using linear extrapolation. During the outage, speed accuracy (sAcc) and horizontal accuracy (hAcc) increase slowly over time.

![2940_2022-10-26-1321](img/2940_2022-10-26-1321.png)

After a windsurfing crash it is very common for GNSS receivers to lose their lock on the satellite signals, just moments before the rider comes to a dead stop. It is very misleading to report a constant SOG / COG and report changes of position whilst the satellite signals are not being tracked.



#### Observations

It is very easy to identify the affected data points because their fix type has a value of "0", meaning "no fix". This is in contrast to a fix type of "3" which is a 3D fix and to be expected when the satellite signals are being tracked.

When a "no fix" navigation solution is produced by the u-blox chipset it has the following properties:

- SOG and COG remain constant
- Position is updated using linear extrapolation
- Sats = 0
- HDOP = 99.99
- hAcc and sAcc slowly increase over time

Whilst this behavior makes a lot of sense for motor vehicles (and many other use cases) it is highly undesirable for watersports.

The following chart shows the relationship between hAcc and sAcc when the fix type is "0", showing how they rise in unison, albeit at different rates.

![KNI841FIN_841_20231007_103000_NOFIX](img/KNI841FIN_841_20231007_103000_NOFIX.png)



#### Recommendation

The Locosys GT-11 used to have a logging option called "ON-FIX", which was recommended to most users. It probably makes sense to implement the equivalent of "on fix" logging within the Motion and ESP-GPS, plus any other GNSS loggers using u-blox chipsets.

There does not seem to be any benefit to logging the "no fix" navigation solutions during watersports activities. They are generally misleading and likely to lead to confusion amongst users, even if the phantom speeds are handled by the standard software filters (e.g. min sats, max HDOP, max sAcc).

It should be relatively easy to implement "on fix" logging in the Motion, ESP-GPS and any other speed sailing devices using u-blox chipsets. The "on fix" behavior can perhaps be made user configurable if desired, but ensuring the default setting is "on fix" and not "always".

Implementing "fix > 0" will result in files that do not have the potential to cause confusion. The absence of any data at a specific point in time will simply indicate that there was no fix, rather than reporting phantom speeds after a crash or general loss of signal.



#### References

u-blox 6 Receiver Description, Including Protocol Specification (18 Apr 2013) - [u-blox.com](https://content.u-blox.com/sites/default/files/products/documents/u-blox6_ReceiverDescrProtSpec_%28GPS.G6-SW-10018%29_Public.pdf)

> 2.6.2 Dead Reckoning, Extrapolating Positioning
>
> This linear extrapolation feature is enabled by setting the drLimit parameter in CFG-NAV5. The extrapolation algorithm becomes active as soon as the receiver no longer achieves a position fix with a sufficient position accuracy or DOP value (see section Navigation Output Filters). It keeps a fixed track (heading is equal to the last calculated heading) until the dead reckoning limit is reached, or a position fix is again possible. The position is extrapolated.

u-blox 5 NMEA, UBX Protocol Specification (12 Aug 2008) - [navilock.de](https://www.navilock.de/files/11409.download)

> Dead Reckoning, Extrapolating Positioning
>
> The implemented extrapolation algorithm kicks in as soon as the receiver no longer achieves a position fix with a sufficient position accuracy or DOP value (see section Navigation Output Filters). It keeps a fix track (heading is equal to the last calculated heading) until the Dead Reckoning Timeout is reached. The position is extrapolated but it’s indicated as “NoFix” (except for NMEA V2.1).

UBX-CFG-NAV5 includes the parameter relating to dead reckoning, extrapolating positioning:

>  drLimit - Reserved (maximum time to perform dead reckoning (linear extrapolation) in case of GPS signal loss



