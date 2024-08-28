## COROS APEX 2 / APEX 2 Pro / VERTIX 2 / VERTIX 2S

### Speedsurfing

#### 3.0308.0

Firmware 3.0308.0 (shown in red) was able to faithfully capture the dynamics of a windsurfer, evident when comparing to a 5 Hz [Motion GPS](https://www.motion-gps.com/motion/index.html) (blue).

![v-3-0308-0](img/v-3-0308-0.png)

The Garmin Forerunner 255 performed almost identically, since both the COROS and Garmin watches use the Airoha AG3335M chipset.

![v-3-0308-0-fr-255](img/v-3-0308-0-fr-255.png)



#### 3.0408.0

Firmware 3.0408.0 introduced a problem which is believed to be caused by one or more [settings](../smoothing/update.md) of the Airoha GNSS chipset.

Excessive filtering / smoothing and sharp dips during periods of acceleration are evident in data from the APEX 2 Pro (red).

![v-3-0408-0-van](img/v-3-0408-0-van.png)

Note: Garmin watches that use the Airoha AG3335M (e.g. Fenix 7 and Forerunner 255) had exactly the same issue in 2022.



#### 3.0508.0

Firmware 3.0508.0 attempted to fix the 3.0408.0 issue, but subsequent analysis identified an issue with the fix - see 3.0510.0 (below).

It is believed that the speeds in 3.0508.0 are derived from positional data, quite possibly after some filtering / smoothing.



#### 3.0510.0

The COROS APEX 2 Pro loses a lot of the finer details, presumably due to filtering / smoothing introduced in 3.0508.0.

![v-3-0510-0-coros](img/v-3-0510-0-coros.png)

The Garmin Forerunner 255 continues to faithfully capture the dynamics of a short test drive.

![v-3-0510-0-garmin](img/v-3-0510-0-garmin.png)

Comparing the above images it is quite clear that the APEX 2 Pro and Forerunner 255 are behaving quite differently, with the Garmin being far more suitable for speedsurfing and windsurfing.
