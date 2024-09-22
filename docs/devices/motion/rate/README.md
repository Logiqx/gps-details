## Motion Mini - Rate Investigation

### Background

In an attempt to understand the significance of different logging rates on the [Motion GPS](https://www.motion-gps.com/motion/index.html), several different tests have been performed and documented.

The tests included static testing, driving, walking, and windfoiling.  All were performed in open-sky environments to avoid influences such as multipath.

- Static tests quantify background noise at different logging rates.
- Driving tests look at differences when motion is subject to relatively smooth acceleration and deceleration.
- Walking tests show the impacts of changes in acceleration and deceleration (aka jerk).
- Windfoiling tests can almost be thought of as a hybrid of driving and walking; sometimes smooth, sometimes jerky.

Findings show that higher logging rates tend to exhibit more noise, but lower rates can result in artefacts / aliasing as predicted by the Nyquist theorem.



### Approach

The general approach to the testing is to eliminate as many variables as possible:

- Compare the behavior of identical devices; contiguous serial numbers, identical casings / internals, and identical firmware.
  - Serial numbers are chosen to match the logging rate - e.g. 801 = 1 Hz, 802 = 2 Hz, 805 = 5 Hz.

- Perform tests during a single time period.
  - Never compare data captured on different days (or at different times) because that is not like-for-like testing.

- Include a 15-minute warm up period, allowing for signal acquisition and enough time to acquire the ephemerides.
  - The GNSS ephemerides repeat every 12 or 12.5 minutes, depending on the GNSS constellation.




### Motions

All of the mini motions use the UBX-M10050-KB chipset, but two distinct generations have been used for testing.

- Older style casings with firmware 3181 @ 1 / 2 / 5 / 10 Hz:
  - 630, 631, 632, 635.
  - 660, 661, 662, 665.

- Newer style casings with upgraded GNSS oscillators and firmware 3212 @ 1 / 2 / 5 Hz:
  - 801, 802, 805.
  - 811, 812, 815.


Notes:

- Firmware 3181 (2022-11-09) was used on the older generation devices so that 10 Hz logging could be enabled.
- Firmware releases for the newer casings / internals prevent 10 Hz logging, but older firmware cannot be installed on newer devices.




### Test Results

#### 1. Static Tests

The general concept behind static testing is that the GNSS receivers are in constant motion (due to the rotation of the earth), but speed over ground (SOG) is known to be zero. Any speed reported by the receiver is therefore an error and may be regarded as noise.

The purpose of this particular test was to determine if there is any difference in behavior between motions logging at 1 / 2 / 5 / 10 Hz. It is clear from the results that higher logging rates do indeed suffer from greater levels of noise, and may be prone to larger outliers.

Follow this [link](garden/README.md) for the full details of the static tests.



#### 2. Driving Tests

The driving tests facilitate the comparison of different logging rates, subject to relatively smooth acceleration and deceleration. The route was repeated a number of times and there was an emphasis on driving smoothly, attempting to keep [jerk](https://en.wikipedia.org/wiki/Jerk_(physics)) to a minimum.

The purpose of this particular test was to determine if there is any difference in behavior between motions logging at 1 / 2 / 5 / 10 Hz. It is interesting to note that to all intents and purposes the differences between 1 / 2 / 5 / 10 Hz are minimal and all of them can produce good results.

Follow this [link](driving/README.md) for the full details of the driving tests.



#### 3. Walking Tests

The walking tests are intended to provide insight into changes of acceleration and deceleration (aka jerk), due to swinging of the arms. The chosen route is an excellent open-sky environment and the walk itself contained periods both with and without arm movement.

The purpose of this particular test was to determine if there is any difference in behavior between motions logging at 1 / 2 / 5 / 10 Hz. Perhaps the most interesting observation is that walking provides an excellent real-world illustration of the [Nyquist-Shannon](https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem) sampling theorem.

Follow this [link](walking/README.md) for the full details of the walking tests.



#### 4. Windfoiling Tests

The windfoiling tests are intended to provide insight into the capture of changes to acceleration and deceleration (aka jerk), due to pumping and other factors. The test session was on a day with very light winds, so there was a lot of pumping required to get up onto the foil.

The purpose of this particular test was to identify any differences in behavior between motions logging at 1 / 5 / 10 Hz. It is clear from the data that there are insights to be gleaned from the 5 Hz and 10 Hz data, not relating to board speed per-se but including factors such as arm movements.

Follow this [link](windfoiling/README.md) for the full details of the windfoiling tests.



### Takeaways

- Benefits of ephemerides over almanac are apparent after the warm up period; position and speed.
- Higher logging rates clearly result in greater levels of noise during static testing.
  - 2 Hz to 5 Hz results in circa 50% more noise.
  - 5 Hz to 10 Hz results in circa 50% more noise.
  - Suspect 20 Hz would be more noisy than 10 Hz.
- The levels of noise need to be kept in context though.
  - The mean error during static tests was approximately 0.02 knots @ 5 Hz
  - The biggest spike during the static tests was 0.38 knots @ 5 Hz

- 1 / 2 / 5 / 10 Hz all work pretty well for regular car journeys, when jerky movements are not prevalent.
  - 5 Hz or 10 Hz logging may be useful when jerk is present; sudden changes in acceleration or deceleration, gear changes, etc.
  - 1 Hz can even do a decent job for the foiling session, but does not capture arm movements when pumping the sail.

- The motion GPS is sensitive enough to pick up arm movements.
  - Swinging of arms when walking.
  - Pumping of sail when windfoiling.
- The Nyquist theorem explains artefacts / aliasing in 2 Hz and 1 Hz data when walking.
  - Interesting beating effect in 2 Hz data and misleading sinusoids in 1 Hz data.
  - When walking, 2s and 10s speeds are completely wrong when logging at 1 Hz.
    - Need to use longer time / distance for the sinusoidal effect to be attenuated.
  - Max 2s is largely unaffected for 2 Hz logging but the beating effect still presents an issue.
    - Need to use filtering or moving averages to get sensible results.
  - Conceivable that similar artefacts / aliasing could also happen when pumping the sail with a specific cadence.
- Logging frequency should be chosen based on the frequency of acceleration changes - aka "jerk".
  - If you want to record accurate speed data including jerky movements, then you must choose a suitable logging rate.
  - 5 Hz will capture arm movements when walking, but other activities / scenarios may require higher logging rates.
  - Post-processing may need to be considerate of subtle details such as arm movement being recorded.
- 5 Hz and 10 Hz provide additional detail when walking (e.g. arm swings) or during windfoiling (e.g. pumping).
  - Arm movement is however not what runners or windsurfers wish to measure!
  - Should not use max speed from 5 Hz / 10 Hz data.
    - Need to apply some kind of filtering to get sane walking speeds / windsurfing speeds.
  - Max 2s seems like an acceptable proxy of top speed when recording at 5 Hz or 10 Hz.
    - Arguably, should not use 1s speeds from 1 Hz data?



### TBC

It is not known how the Motion is producing data at different log rates:

- How are CFG-RATE-MEAS and CFG-RATE-NAV (previously UBX-CFG-RATE) being used inside the Motion?
  - Logging at 1 Hz could be done in several ways, but it's unclear whether the results would differ:
    - CFG-RATE-MEAS = 100 and CFG-RATE-NAV = 10
    - CFG-RATE-MEAS = 200 and CFG-RATE-NAV = 5
    - CFG-RATE-MEAS = 500 and CFG-RATE-NAV = 2
    - CFG-RATE-MEAS = 1000 and CFG-RATE-NAV = 1
  - It is also not clear to me whether navigation solutions can use several recent GNSS measurements, or just the latest.
