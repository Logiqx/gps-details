## Garmin Developer Tips

### Accuracy Estimates

#### Overview

Accuracy estimates are available in the Android [Location](https://developer.android.com/reference/android/location/Location) class and Apple [CLLocation](https://developer.apple.com/documentation/corelocation/cllocation) class. These estimates relate to the position and speed accuracy at the 68th percentile confidence level. Full details of the accuracy estimates provided by Android and Apple can be found on a page detailing both [APIs](https://logiqx.github.io/gps-wizard/apis/location.html).

It is worth noting the Airoha AG3335M chipset used in many modern [Garmin watches](../watches/README.md) is capable of providing these metrics but they are not currently exposed via the Garmin API. It is highly desirable for the accuracy estimates from the Airoha chipset to be exposed via the Garmin [Toybox.Position](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html) module in a future API.



#### References

We do not have access to the Airoha_IoT_SDK_for_GNSS_Developers_Guide, but details about accuracy estimates can be found in the Airoha documentation from SIMCom and Quectel.

- [SIMCom SIM68D Series NMEA Message User Guide](https://en.simcom.com/technical_files.html?pro_cat=10&pro_li=71&time=0&filetype=0) - confirmed as [AG3335M](https://www.avnet.com/wps/wcm/connect/onesite/3a0ea576-cf1b-4a79-8479-5fff508b3c01/EBV-IoT+-+SIMCom+GNSS+Modules+Info+Sheet.pdf?MOD=AJPERES&CVID=nxzMVxi&CVID=nxvsTVu&srsltid=AfmBOopCaoUOA7bpMqRLKpTbZg2-YQLGgqttJoFp0sA4-TuMiJUObcdp)
- [Quectel LC29H Series & LC79H (AL) GNSS Protocol Specification](https://forums.quectel.com/uploads/short-url/gJTnPOK8MkEJIgLFR7QgjvrpUey.pdf) - confirmed as [AG3335 platform](https://www.quectel.com/news-and-pr/gnss-lc29h-launch/)
