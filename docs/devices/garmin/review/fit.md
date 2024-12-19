## Garmin FIT

### Overview

The FIT format is the most feature-rich format that can be exported from Garmin Connect.

This document describes some of the items which are currently available, and possibilities for the future (e.g. accuracy estimates).

- Metadata describes the device, firmware, application, and settings.
- Activity data includes speed, fix quality, GPS accuracy, GNSS events, battery status, etc.



### Metadata

#### Sport

Only a few of the sports in [Toybox.Activity](https://developer.garmin.com/connect-iq/api-docs/Toybox/Activity.html#Sport-module) are suitable for speed sailing apps.

| Name              | Value |
| ----------------- | ----- |
| SPORT_GENERIC     | 0     |
| SPORT_WINDSURFING | 43    |
| SPORT_KITESURFING | 44    |

Note: The sport used for the activity recording is automatically saved to the FIT and it will persist, even if the activity type is subsequently changed in Garmin Connect.



#### File Id

The file ID includes the basic watch information.

| Field         | Value      | Description |
| ------------- | ---------- | ----------- |
| manufacturer  | 1          | Garmin      |
| product       | 4375       | Fenix 7 Pro |
| serial number | 3500001234 |             |



#### Device Info

The firmware and GNSS version could prove to useful in the future, should any bad firmware be released.

| Name             | Criteria                                         |
| ---------------- | ------------------------------------------------ |
| Firmware version | device_type is empty, or device_index == creator |
| GNSS version     | device_type == 0                                 |



#### Developer Data Id

The application details from the developer_data_id record can be used to identify the application downloaded from the Connect IQ Store, but not side-loaded betas.

| Name                | Example                              | Descrption                                  |
| ------------------- | ------------------------------------ | ------------------------------------------- |
| application_id      | 9567700b-6587-44be-9708-879bfc844791 | UID for application on the Connect IQ Store |
| application_version | 120                                  | Version number                              |



#### Session

Applications such as APPro may record some human-readable information that relates to the session.information.

| Name        | Example                      |
| ----------- | ---------------------------- |
| craft       | wingfoil                     |
| app_name    | APPro                        |
| app_ver     | 4.07                         |
| gnss_config | 6 = all systems + multi-band |



### Activity Data

#### Speed + Altitude

FIT files contain a field called *speed* which is a 16-bit integer. This represents the speed over ground (SOG) in mm/s, so the max speed that can be represented is 65.535 m/s. There is an *enhanced_speed* field which is a 32-bit integer, which has a limit of slightly over 4 billion mm/s. There is no difference between the two fields when windsurfing. There are no change to filters, or anything special about *enhanced_speed*.

Likewise the regular *altitude* field is 16-bits and limited to 6553.5 m (6.5 km). This would be too small for people like Felix Baumgartner who jumped from a balloon at 39 km, but *enhanced_altitude* is 32-bits and overcomes the limits of the 16-bit altitude.



#### Fix Quality

Connect IQ apps such as APPro are able to acquire GNSS fix [quality](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#Quality-module) indicator and it to the FIT file as a field called fix_quality.

| Name                  | Value | Description                                                  | Sats |  HDOP  |
| --------------------- | :---: | ------------------------------------------------------------ | :--: | :----: |
| QUALITY_NOT_AVAILABLE |   0   | GPS is not available                                         |      |        |
| QUALITY_LAST_KNOWN    |   1   | The Location is based on the last known GPS fix.             |      |        |
| QUALITY_POOR          |   2   | The Location was calculated with a poor GPS fix. Only a 2-D GPS fix is available, likely due to a limited number of tracked satellites. |  3   |        |
| QUALITY_USABLE        |   3   | The Location was calculated with a usable GPS fix. A 3-D GPS fix is available, with marginal [HDOP](https://en.wikipedia.org/wiki/Dilution_of_precision_(navigation)) (horizontal dilution of precision) | >= 4 | > 3.0  |
| QUALITY_GOOD          |   4   | The Location was calculated with a good GPS fix. A 3-D GPS fix is available, with good-to-excellent [HDOP](https://en.wikipedia.org/wiki/Dilution_of_precision_(navigation)) (horizontal dilution of precision). | >= 4 | <= 3.0 |



#### GPS Accuracy

Accuracy estimates are available in the Android [Location](https://developer.android.com/reference/android/location/Location) class and Apple [CLLocation](https://developer.apple.com/documentation/corelocation/cllocation) class. These estimates relate to the position and speed accuracy at the 68th percentile confidence level. Full details of the accuracy estimates provided by Android and Apple can be found on a page detailing both [APIs](https://logiqx.github.io/gps-wizard/apis/location.html).

The Airoha AG3335M chipset is capable of providing these metrics but they are not currently exposed via the Garmin API. It is highly desirable for the accuracy estimates from the Airoha chipset to be exposed via the Garmin [Toybox.Position](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html) module in a future API.

I was digging into Garmin's FIT SDK yesterday and discovered that a field called GPS accuracy is already present. The units are meters, so it will almost certainly be positional accuracy (aka hAcc). iI know from my previous investigations that hAcc issues are an excellent proxy for sAcc issues. This applies to all of the GNSS chipsets that I've studied and tested; e.g. SiRF, UBX, Broadcom, Qualcomm, Samsung.

The next question is whether Garmin have some way that we can force watches to record the GPS accuracy (hAcc) in FIT files. Someone in Garmin seems to have developed this capability already, based on what I can see in their FIT SDK. However, I can find nothing related in the Connect IQ developer documentation. Perhaps it is something that can be achieved with some kind of debug build?



#### GPS Events

There are some undocumented records called GPS events, but I have decoded and [documented](../developer/gps-events.md) the content.

- Event type 49 - mode change
  - Applications trying to determine the GNSS mode can use the appropriate bit mask(s), instead of expecting one or two specific values.
  - The test for GPS L1 + L5, GLONASS, Galileo E1 + E5a, BeiDou B1I + B2a would be "mode & 0x1cc3 == 0x1cc3".
- Event type 11 - UltraTrac trigger
  - UltraTrac is a feature that only turns on the GPS once per minute to save power during multi-day events.
  - An UltraTrac event appears to fire every 60 seconds, regardless of UltraTrac is active.
- Event type 3
  - This occurs after a crash when u-blox devices are reporting hAcc + sAcc issues. It may have its uses for crash detection?
- Event type 2
  - Often occurs shortly before event type 3



#### Timestamp Correlation

This looks interesting and may relate to the time offsets, but I have yet to investigate.



#### Device Status

This includes the battery level during the session.

../developer/fix-quality.md)





