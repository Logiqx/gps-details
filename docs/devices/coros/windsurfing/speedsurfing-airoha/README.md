## COROS APEX 2 / APEX 2 Pro / VERTIX 2 / VERTIX 2S

### Speedsurfing

#### 3.0308.0

Firmware 3.0308.0 (shown in red) was able to faithfully capture the dynamics of a windsurfer, evident when comparing to a 5 Hz [Motion GPS](https://www.motion-gps.com/motion/index.html) (blue).

![v-3-0308-0](img/v-3-0308-0.png)

The Garmin Forerunner 255 performed almost identically, since both the COROS and Garmin watches use the Airoha AG3335M chipset.

![v-3-0308-0-fr-255](img/v-3-0308-0-fr-255.png)



#### 3.0408.0

Firmware 3.0408.0 introduced a problem which is believed to be caused by one or more [settings](../../smoothing/update.md) of the Airoha AG3335M chipset.

Excessive filtering / smoothing and sharp dips during periods of acceleration are evident in data from the APEX 2 Pro (red).

![v-3-0408-0-van](img/v-3-0408-0-van.png)

Notes

- Garmin watches that use the Airoha AG3335M (e.g. Fenix 7 and Forerunner 255) had exactly the same issue in 2022.
- Thoughts and guidance regarding a resolution of the underlying issue in 3.0408.0 were [documented](../../smoothing/update.md) on 22 Aug 2024.



#### 3.0508.0

Firmware 3.0508.0 attempted to fix the issue in 3.0408.0. It was observed that speedsailing data from 3.0508.0 resembled the windsurfing mode.

The significance of these issues only became fully apparent after the release of 3.0508.0 for the APEX Pro / VERTIX - see 3.0510.0 (below).

It is believed that the speeds in 3.0508.0 were being derived from positional data, quite possibly after some upfront filtering / smoothing.



#### 3.0510.0

The COROS APEX 2 Pro loses a lot of the subtle details in 3.0308.0, presumed to be due to the filtering / smoothing introduced in 3.0508.0.

![v-3-0510-0-coros](img/v-3-0510-0-coros.png)

The Garmin Forerunner 255 faithfully captures the dynamics of the same short test drive.

![v-3-0510-0-garmin](img/v-3-0510-0-garmin.png)

Comparing the above images it is quite clear that the APEX 2 Pro and Forerunner 255 are now behaving quite differently, with the Garmin being far more suitable for speedsurfing and windsurfing.



### Outstanding Issue

Due to the observations for the APEX Pro and VERTIX it is believed that the APEX 2 / APEX 2 Pro / VERTIX 2 / VERTIX 2S are also using non-Doppler speeds. The suspicion is that positional data is being filtered / smoothed to calculate speeds, instead of using the speed data from the Airoha chipset.

It should also be noted that GP3S are starting to observe more spikes being posted from the APEX 2 Pro and VERTIX 2. These issues are consistent with what would be expected when calculating speeds using the positional data, instead of the Doppler-derived speeds.

It would appear that the release of 3.0508.0 in July did not resolve the underlying issue, and was essentially a hack that calculates speeds using the positional data. Thoughts and guidance regarding a resolution of the underlying issue in 3.0408.0 were [documented](../../smoothing/update.md) on 22 Aug 2024.

