## Airoha Chipset

### History

The Airoha AG3335M and AG3335MN are used in the latest watches from Garmin, confirmed by teardowns.

The main difference is the [Airoha](../../../chipsets/airoha/devices.md) AG3335M is multi-band and AG3335MN is single-band. The AG3335MN actually supports NavIC on L1 + L5, instead of multi-band for the other systems, but NavIC is not supported by Garmin devices.

Airoha is a subsidiary of [MediaTek](../../../chipsets/mediatek/devices.md) who made the MT3333 which was the most widely used GNSS chipset in watches, prior to the [Sony](../../../chipsets/sony/devices.md) era. The MT3333 is actually has an update rate of 10 Hz but sports watches do not update at that frequency.

The Airoha AG3335 series are direct descendants of the MT3333, but are far more capable.



### Details

Looking at reference manuals for GNSS modules that use the AG3335M gives insights into the capabilities.

- PAIR commands are proprietary Airoha and are far more extensive the MT3333.
  - These often provide insights into the capabilities of the AG3335M and AG3335MN.
- [RAIM](https://en.wikipedia.org/wiki/Receiver_autonomous_integrity_monitoring) appears to be implemented, based on the existence of the [GRS](https://gpsd.gitlab.io/gpsd/NMEA.html#_grs_gps_range_residuals) and [GST](https://gpsd.gitlab.io/gpsd/NMEA.html#_gst_gps_pseudorange_noise_statistics) sentences.
  - RAIM uses redundant signals to produce several GPS position fixes and compare them,
    and a statistical function determines whether or not a fault can be associated with any of the signals.
- Multi-band is obviously implemented.
  - Connect IQ apps can use GPS L1 + L5, GLONASS, Galileo E1 + E5a, and BeiDou B1I + B2a.
  - Native Garmin activities seem to benefit from QZSS L1 + L5 as well, although limited to Asia and Oceana.
- Accuracy estimates are calculated by the AG3335 chipsets, some of which are documented by GNSS modules.
  - $PQTMVEL (proprietary Quectel) - estimate of 2D speed accuracy, 3D speed accuracy. and heading accuracy.
  - $PAIR030 (PAIR_COMMON_GET_POS_XYZ) - 3-dimensional position space 1-sigma accuracy estimate (in meters).
  - $PAIR031 (PAIR_COMMON_GET_VEL_XYZ) - 3-dimensional speed 1-sigma accuracy (m/s).
  - I'm 99.7% sure the Airpha chipsets will have PAIR commands for 2D position accuracy and 2D speed accuracy.
- Multiple power saving modes.
  - GPS Low Power (GLP), Adaptive Low Power (ALP), Fitness Low Power (FLP), Ultra Low Power (ULP), Periodic Power Saving.
  - We probably don't want any of these power saving features activated.
- Multiple navigation modes / dynamic models.
  - Normal, fitness, aviation, balloon, stationary, drone, swimming, bike, etc.
- Different fix rates and NMEA output rates.
  - Up to 10 Hz, although Garmin only records data at 1 Hz.
  - I suspect that different combinations of fix rate and NMEA output rate affect the [low pass filtering](../../../general/aliasing/README.md).
- I documented many of these Airoha capabilities whilst troubleshooting COROS issues.
  - See [COROS smoothing issues](../../coros/smoothing/update.md) for full details of the Airoha capabilities.



### References

Links to documentation for GNSS modules that use the AG3335 platform.

- [SIMCom SIM68D Series NMEA Message User Guide](https://en.simcom.com/technical_files.html?pro_cat=10&pro_li=71&time=0&filetype=0) - confirmed as [AG3335M](https://www.avnet.com/wps/wcm/connect/onesite/3a0ea576-cf1b-4a79-8479-5fff508b3c01/EBV-IoT+-+SIMCom+GNSS+Modules+Info+Sheet.pdf?MOD=AJPERES&CVID=nxzMVxi&CVID=nxvsTVu&srsltid=AfmBOopCaoUOA7bpMqRLKpTbZg2-YQLGgqttJoFp0sA4-TuMiJUObcdp)
- [Quectel LC29H Series & LC79H (AL) GNSS Protocol Specification](https://forums.quectel.com/uploads/short-url/gJTnPOK8MkEJIgLFR7QgjvrpUey.pdf) - confirmed as [AG3335 platform](https://www.quectel.com/news-and-pr/gnss-lc29h-launch/)