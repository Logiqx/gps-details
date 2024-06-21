## Motion Mini - Rate Investigation

### Background

In an attempt to understand the significance of different logging rates on the [Motion GPS](https://www.motion-gps.com/motion/index.html), several different tests have been performed and documented.

The tests included static testing, walking, driving and windfoiling.  All were performed in open-sky environments to avoid influences such as multipath.

Findings show that higher logging rates introduce more noise, but that lower rates can result in speed artefacts dependent on the Nyquist frequency.



### Approach

The general approach to the testing is to remove as many variables as possible:

- Only compare the behavior of identical devices; i.e. contiguous serial numbers, identical casings / internals, and identical firmwares.
  - n.b. Serial numbers have been chosen to match the desired logging rates - e.g. 801 = 1 Hz, 802 = 2 Hz, 805 = 5 Hz.

- Always perform tests during a single time period.
  - Never compare data captured on different days (or at different times) because that is not like-for-like testing.

- Include a 15-minute warm up period, allowing for signal acquisition and providing enough time to acquire the ephemerides.
  - n.b. The GNSS ephemerides for each satellite repeat every 12 or 12.5 minutes, depending on the GNSS constellation.




### Motions

All of the mini motions use the UBX-M10050-KB chipset, but two distinct generations have been tested.

- Older casing with firmware 3181 @ 1 / 2 / 5 / 10 Hz:
  - 630, 631, 632, 635.
  - 660, 661, 662, 665.

- Newer casing with upgraded GNSS oscillator and firmware 3212 @ 1 / 2 / 5 Hz:
  - 801, 802, 805.
  - 811, 812, 815.


Notes:

- Firmware 3181 (2022-11-09) was used on the older generation devices so that 10 Hz logging could be enabled.
- Firmware releases in 2023 prevent 10 Hz logging, but the 2022 firmware cannot be installed on newer devices.




### Tests

#### Static Tests

The general concept behind static testing is that the GNSS receivers are in constant motion (due to the rotation of the earth), but speed over ground (SOG) is known to be zero. Any speed reported by the receiver is therefore an error and can be considered to be noise.

The purpose of this particular test was to determine if there is any difference in behavior between motions logging at 1 / 2 / 5 / 10 Hz. It is clear from the results that higher logging rates do indeed suffer from greater levels of noise, and prone to larger outliers.

Follow this [link](garden/README.md) for the full details of the static tests.



#### Driving Tests

The driving tests provide a convenient platform for the comparison of different logging rates, subject to relatively smooth acceleration and deceleration. The route was repeated a number of times and there was an emphasis on driving smoothly, attempting to keep [jerk](https://en.wikipedia.org/wiki/Jerk_(physics)) to a minimum.

The purpose of this particular test was to determine if there is any difference in behavior between motions logging at 1 / 2 / 5 / 10 Hz. It is interesting to note that to all intents and purposes the differences between 1 / 2 / 5 / 10 Hz are minimal and all of them produce good results.

Follow this [link](driving/README.md) for the full details of the driving tests.



#### Walking Tests

The walking tests are intended to provide insight into the capture of changes to acceleration and deceleration (aka jerk), due to swinging of the arms. The chosen route is an excellent open-sky environment and the walk itself contained periods both with and without arm movement.

The purpose of this particular test was to determine if there is any difference in behavior between motions logging at 1 / 2 / 5 / 10 Hz. Perhaps the most interesting observation is that walking provides an excellent real-world illustration of the [Nyquist-Shannon](https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem) sampling theorem.

Follow this [link](walking/README.md) for the full details of the walking tests.



#### Windfoiling Tests

The windfoiling tests are intended to provide insight into the capture of changes to acceleration and deceleration (aka jerk), due to pumping and other factors. The test session was on a day with very light winds, so there was a lot of pumping required to get up onto the foil.

The purpose of this particular test was to determine if there is any difference in behavior between motions logging at 1 / 5 / 10 Hz. It is clear from the data that there are insights to be gleaned from the 5 Hz and 10 Hz data, not relating to board speed per-se but including things like arm motion.

Follow this [link](windfoiling/README.md) for the full details of the windfoiling tests.



### Takeaways

- Benefits of ephemerides over almanac are often apparent during warm up period; position and speed.
- 1 / 2 / 5 / 10 Hz are all pretty suitable for regular car journeys.
  - 1 / 2 Hz even do a decent job for the foiling session.
- Higher logging rate = greater noise, seen in 1 hour speeds and total distances.
  - 2 Hz to 5 Hz = +33% to + 46% (day 1).
  - 5 Hz to 10 Hz = +62% to +72% (day 1).
  - 20 Hz likely to be even higher?
- GPS can pick up arm swings when walking and pumping of sail.
- Nyquist theorem evident in 2 Hz and 1 Hz.
  - Interesting beating in 2 Hz data (e.g. 16:23 - 16:24 during walk 2 - motion 0662) and sinusoids when walking.
  - Walking ruins 2s and 10s speeds when logging at 1 Hz.
    - Need to use longer time / distance for the sinusoidal effect to be attenuated.
  - Max 2s is largely unaffected for 2 Hz logging but the beats may still an issue. Need filtering or moving averages...
  - Conceivable it could also happen when pumping with a specific cadence.
- 5 Hz and 10 Hz provide additional detail when walking (arm swings) or windsurfing (pumping).
  - Arm movement is however not what runners or windsurfers wish to measure!
  - Should not use max speed from 5 Hz / 10 Hz data.
    - Could apply some kind of filtering to get sane walking speeds / windsurfing speeds.
  - Max 2s seems like an acceptable measure of top speed.
    - Arguably, should not use 1s speeds from 1 Hz data?
- Logging frequency should be chosen for the frequency of acceleration changes (arm swings, etc) - aka "jerk".



### TBC

Motion may be taking samples of 10 Hz data, rather than calculating speeds over longer periods of time.

- Is this behavior of the Motion or u-blox?
- How have CFG-RATE-MEAS and CFG-RATE-NAV (previously UBX-CFG-RATE) being used by the motion?
  - Logging at 5 Hz could be done in one of 2 ways but it's unclear whether the results would differ:
    - CFG-RATE-MEAS = 100 and CFG-RATE-NAV = 2
    - CFG-RATE-MEAS = 200 and CFG-RATE-NAV = 1
