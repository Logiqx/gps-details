## Garmin FIT - sport

### Overview

The *sport* record is useful for identifying the sport profile that was used to record the session.

It tends to appear in FIT files from Garmin watches, but absent in files from the likes of COROS and Suunto.

However, most watch brands have a *sport* field in the [*session*](../session/README.md) record, even if they do not have a dedicated *sport* record.



### Fields

| Field name | Field type | Example          | Comment                  |
| ---------- | ---------- | ---------------- | ------------------------ |
| sport      | uint8      | 43 (windsurfing) | 0 = generic <sup>1</sup> |
| sub_sport  | uint8      | 0 (generic)      | 0 = generic <sup>2</sup> |
| name       | string     | Windfoiling      | Free-form text           |

Notes:

1. The list of sports is available in Profile.xlsx inside the [FIT SDK](https://developer.garmin.com/fit/download/) and documentation for [Toybox.Activity](https://developer.garmin.com/connect-iq/api-docs/Toybox/Activity.html).
2. The list of sub-sports is available in Profile.xlsx inside the [FIT SDK](https://developer.garmin.com/fit/download/) and documentation for [Toybox.Activity](https://developer.garmin.com/connect-iq/api-docs/Toybox/Activity.html).



### Windsports

The following *sport* types are suitable for windsport activities. There are no windsports besides windsurfing and kitesurfing.

| Sport       | Id   |
| ----------- | ---- |
| Generic     | 0    |
| Windsurfing | 43   |
| Kitesurfing | 44   |

