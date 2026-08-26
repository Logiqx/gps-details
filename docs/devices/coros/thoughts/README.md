## COROS Thoughts

Author: Michael George

Date created: 26 Aug 2026



### Background

The adoption of COROS devices by [GPS-Speedsurfing](https://www.gps-speedsurfing.com/) was based on a collaboration between the two parties.

COROS released firmware in Nov 2020 which introduced the Windsurfing and Speedsurfing activities. Whilst the Windsurfing activity is like many of the other fitness activities, Speedsurfing included metrics specifically for GPS-Speedsurfing, and recorded Doppler-derived speeds.

The APEX Pro and VERTIX were the latest models at the time, and they provided some really nice features to the community. Metrics such as 2 sec, 10 sec, 250 m, 500 m, and NM are great on the water. The phone app could also produce a nice session summary, near perfect for social media.

It was possible to link a GPS-Speedsurfing account with a COROS account, so sessions would be automatically uploaded. It was a great user experience, and it simplified the process of posting sessions after the session, eliminating the need for a laptop and cables.



### Issues

The early models (APEX Pro and VERTIX) used a GNSS receiver from Sony, which to be honest has mediocre GNSS performance at best. However, since Locosys had stopped producing the GT-31, GW-52, and GW-60 the community urgently required a successor.

The willingness of COROS to collaborate, and the convenience of their watches made them a great choice. They weren't perfect, but the view was that they could be improved over time. It was only later when it started to become evident that the watches had a variety of issues.

The APEX 2 Pro, VERTIX 2, and VERTIX 2S initially had significantly improved GNSS performance, thanks to the Airoha AG3335M chipset. In May 2024, firmware issues started to occur and that is when things started to go downhill in terms of GNSS performance.

Some of the known issues are documented within this website; [short articles](https://logiqx.github.io/gps-details/devices/coros/), and [firmware](https://logiqx.github.io/gps-details/devices/coros/firmware/) details. Some of the issues are not even documented, because frankly it takes a lot of time and effort, and I have limited spare time available.

One of the biggest issues in recent years has been that all of the watches have received firmware updates which ruin the speed data. Specifically, recording position-derived speeds (instead of Doppler-derived) and producing unrealistic results which can be wrong several knots, or more.

Another significant issue that remains unresolved is intermittent data errors that produce "fantasy" alpha results that are often wrong by up to 10 knots. This is thoroughly [documented](https://logiqx.github.io/gps-details/devices/coros/alpha/) and it is clearly an issue in how COROS handle the GNSS data.

Lastly, lots minor bugs are present such as not understanding that gybes should terminate runs. So, you can go and sail for an hour (or more) and if you are good at gybes the COROS watch (and app) will report a single run for the whole session.



### Lack of Support

There used to be an ongoing discussion with the Head of Product Marketing and Support at COROS, but there has been no contact since April 2025. There has been no notice of new product releases (e.g. COROS APEX 4), or updates about the firmware issues.

The various [firmware issues](https://logiqx.github.io/gps-details/devices/coros/firmware/) during 2024 continued to re-occur during 2025, and testing all of the various firmware releases became unrealistic. I have spent hundreds of hours on this personally (maybe 300 or 400 hours), and it was extremely disheartening when the same issues kept re-occurring.

Neither I, nor the guys at GPS-Speedsurfing have heard from our COROS representative for almost 18 months, and despite the early promise, it feels like the company had lost interest in our community, and incapable of resolving the issues that we report.



### APEX 4

Just recently there has been a [discussion](https://www.facebook.com/groups/280615396460290/posts/1761215185066963/) on Facebook, initially asking about the APEX 4 but then various discussions about topics such as Doppler, multi-band, etc. That is what prompted this page to be written, so that some relevant information can be shared.

The COROS APEX 4 (42 mm and 46 mm) was released in Oct 2025, and the specification suggests that it COROS have switched to a different GNSS chipset. This adds uncertainty about the performance. Change is not always for the best, and power savings can cost in performance.

My expectation is that the bugs present on the APEX Pro, VERTIX, APEX 2 Pro, VERTIX 2, and VERTIX 2S will still be present in the APEX 4. Establishing whether this is the case is extremely time consuming though, and not an endeavour that I have undertaken to date.



### Clarification

#### Doppler

The green icon on GPS-Speedsurfing is often thought to represent a "Doppler" device, but that is not actually the case. It represents devices which have been approved for use on the basis of their overall performance, and one of the mandatory criteria is Doppler-derived speeds.

Satellites are orbiting the earth twice per day, whilst the earth is rotating, whilst we are windsurfing. The GNSS signals are affected by the Doppler effect, which essentially changes their frequency. In order to process the GNSS signals, receivers must determine the Doppler shift for each signal.

Without going into the gory details, knowledge of the satellites themselves (position, and velocity) and the estimated Doppler shifts makes it possible to determine the velocity of the receiver. The Doppler-derived speed is typically a lot more accurate than a speed that is derived from two positions.

#### Multiband

Multiband is not a pre-requisite for Doppler-derived speeds. It is also not a silver-bullet for accurate speeds, but the Airoha AG3335M chipset does support multi-band and it demonstrates some great performance, when the COROS firmware is not broken.

In the context of watches, multi-band simply means they can use two signals from each satellite (e.g. L1 band, and L5 band). The signals on the L5 band are more powerful, and thus provide better penetration of tree cover, and some building materials.

The L5 signals also has a higher "chipping rate" which results in greater precision when estimating the distance between the satellite and the receiver (aka pseudo-range measurement), somewhat akin to the original P(Y) code of GPS which was for military purposes.

Perhaps the most significant factor of using the L1 and L5 signals in combination is to allow the ionospheric delays to be modelled, and largely eliminated from the navigation solution. The ionospheric delay is the most significant source of error in the pseudo-range [error budget](https://www.vectornav.com/resources/inertial-navigation-primer/specifications--and--error-budgets/specs-gnsserrorbudget).

There are other benefits such as greater natural immunity to multipath error, and faster acquisition times. There is no obvious benefit to multi-band when it comes to the Doppler measurements, and the benefits are so slight that they are hard to identify through experimentation.

#### Activity modes

A little known fact is that whilst a watch may be capable of producing Doppler-derived speeds it is very much dependent on the activity type. There is no benefit to a hiker knowing that the speed of their wrist oscillates between 0 and 10 km/h, when hiking at 5 km/h.

Thus the various activity types model speeds in different ways, and the vast majority of activity modes do not use the Doppler-derived speeds being calculated by the GNSS chipset. The Speedsurfing activity for COROS watches is the only activity that uses Doppler-derived speed.

On a related note, Garmin watches are also able to record Doppler-derived speeds, but only when using activities such as windsurfing, kiteboarding, waterskiing, etc. The quality of the Doppler-derived speed is also highly dependent on the GNSS chipset, filters, oscillator, and antenna design.

#### File formats

There are many layers in between the GNSS chip, and the results that you eventually see on website such as GPS-Speedsurfing. The activity mode has already been discussed, but the choice of file format is another thing where something can go awry.

COROS is the only watch manufacturer who include speed in their GPX files, but it not part of the GPX 1.1 standard, and thus it is often ignored by GPX imports. It is strongly advised that COROS users only ever share / upload FIT exports, thus ensuring that the speed data is preserved.

No other watch manufacturer includes speed in their GPX files, but FIT files always include the speed that is applicable to the activity. This goes back to the topic of using a suitable activity mode to ensure the Doppler-derived speeds are recorded, so Speedsurfing on COROS.

COROS and Garmin are the only two sports watch manufacturers that have suitable activity modes. Suunto and Polar do not have any way to record the Doppler-derived data, and Apple is a another can of worms that I will not discuss on this page.



### Where next?

Hopefully this page has provided some relevant background information about COROS devices between 2020 and 2025. What happens about the APEX 4 is still to be decided. The GNSS performance is unknown, and the reliability of future firmware updates cannot possibly be known.

I have numerous [projects](https://logiqx.github.io/gps-wip/) on the go for the speedsurfing community, but I haven't personally investigated the APEX 4. I also haven't yet documented how assess GNSS performance for a new device, and the variety of issues that may be evident. Sadly, it's not as simple as comparing the top runs.

I don't really know what to think about COROS watches at this time. The fact that COROS repeatedly re-introduce the same issues over and over again does not fill me, or the guys at GPS-Speedsurfing with confidence. We have also lost contact with the company, which is not great.

I've not ruled out an investigation into the APEX 4, but I do have a lot of other projects on the go, summarised in the link above. The next couple of months are super-busy for me, during which I won't have any bandwidth for COROS activities.



### Background articles

If you want to understand GPS / GNSS in more detail, I wrote a series of short articles on Medium.

- [About GPS / GNSS](https://medium.com/@mikeg888/list/about-gps-gnss-3fd1bc0923f6)
- [Speedsurfing GPS Devices](https://medium.com/@mikeg888/list/speedsurfing-gps-devices-1bcb8505122f)

There is also a more informal collection of technical articles on Github:

- [gps-details](https://logiqx.github.io/gps-details/)

The above links are a tiny percentage of what I have investigated in recent years, perhaps 5 to 10% at most.
