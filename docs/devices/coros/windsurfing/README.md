## COROS Activity Comparison

### Background

This article attempts to clearly show the differences between speedsurfing and windsurfing modes on COROS watches.

Various different firmware versions are used to illustrate the problems in 3.0408.0, 3.0508.0, and 3.0410.0.

All of the examples use data gathered whilst driving around a short circuit; 3 laps with total distance of 5 km.

![circuit](img/circuit.jpg)



### APEX / VERTIX

These two links below look at speedsurfing mode and windsurfing mode on the APEX Pro / VERTIX.

The Garmin vivoactive 4 has also been included because it uses a chipset from the same Sony CXD56xxxx family.

The 3.0508.0 firmware was highly detrimental to the APEX Pro / VERTIX, introducing non-Doppler speeds to the speedsurfing mode.

- [Speedsurfing](speedsurfing-sony/README.md)
- [Windsurfing](windsurfing-sony/README.md)



### APEX 2 / APEX 2 Pro / VERTIX 2 / VERTIX 2S

These two links below look at speedsurfing mode and windsurfing mode on the APEX 2 / APEX 2 Pro / VERTIX 2 / VERTIX 2S.

The Garmin Forerunner 255 has also been included because it uses exactly the same Airoha AG3335M chipset.

The 3.0408.0 firmware was highly detrimental to the APEX 2 / APEX 2 Pro / VERTIX 2 / VERTIX 2S, and 3.0508.0 is inferior to 3.0308.0.

- [Speedsurfing](speedsurfing-airoha/README.md)
- [Windsurfing](windsurfing-airoha/README.md)



### Summary

- Speedsurfing mode prior to 3.0408.0 used the Doppler-derived speeds, calculated by the Sony / Airoha chipsets.
  - Issue: The 3.0508.0 firmware appears to calculate speeds using positional data from the Sony / Airoha chipsets.
- The calculation of speeds using positional data in windsurfing mode has never been desirable.
  - Issue: GP3S regularly see inaccurate speeds and spikes from people who are using the windsurfing mode.
- The issue in 3.0508.0 needs to be resolved - i.e. speedsurfing mode should revert to using the Doppler-derived speeds.
  - Action: The windsurfing mode should also use the same approach as speedsurfing - i.e. Doppler-derived speeds.
- Thoughts and guidance on the resolution of the original issue in 3.0408.0 were [documented](../smoothing/update.md) on 22 Aug 2024.

