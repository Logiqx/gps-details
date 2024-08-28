## COROS Activity Comparison

### Background

This article attempts to clearly show the differences between speedsurfing and windsurfing modes on COROS watches.

The examples use data whilst driving around a short circuit; 3 laps with total distance of 5 km.

![circuit](img/circuit.jpg)



### APEX / APEX Pro

These two pages look at speedsurfing mode and windsurfing mode on the APEX / APEX Pro.

The Garmin vivoactive 4 is also included because it uses a chipset from the same Sony CXD56xxxx family.

The 3.0508.0 firmware was highly detrimental to the APEX Pro / VERTIX, introducing non-Doppler speeds to the speedsurfing mode.

- [Speedsurfing](speedsurfing-sony/README.md)
- [Windsurfing](windsurfing-sony/README.md)



### APEX 2 / APEX 2 Pro / VERTIX 2 / VERTIX 2S

These two pages look at speedsurfing mode and windsurfing mode on the APEX 2 / APEX 2 Pro / VERTIX 2 / VERTIX 2S.

The Garmin Forerunner 255 is also included because it uses the same Airoha AG3335M chipset.

The 3.0408.0 firmware was highly detrimental to the APEX 2 / APEX 2 Pro / VERTIX 2 / VERTIX 2S and 3.0508.0 is inferior to 3.0308.0.

- [Speedsurfing](speedsurfing-airoha/README.md)
- [Windsurfing](windsurfing-airoha/README.md)



### Summary

- Speedsurfing mode prior to 3.0408.0 used the Doppler-derived speeds, calculated by the Sony / Airoha chipsets.
  - Issue: The 3.0508.0 firmware appears to calculate speeds using positional data from the Sony / Airoha chipsets.
- The calculation of speeds using positional data in windsurfing mode has never been desirable.
  - Issue: GP3S regularly see inaccurate speeds and spikes from people who are using the windsurfing mode.
- The issue in 3.0508.0 needs to be resolved - i.e. speedsurfing mode should revert to using the Doppler-derived speeds.
  - Action: The windsurfing mode should also use the same approach as speedsurfing - i.e. Doppler-derived speeds.

