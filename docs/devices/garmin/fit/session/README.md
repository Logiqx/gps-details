## Garmin FIT - session

### Overview

The *session* record provides summary information for the session, including some general statistics.

The majority of watch brands include a *sport* field in the *session* record, even if they do not have a dedicated [*sport*](../sport/README.md) record.



### Generic Fields

| Field name | Field type | Example          | Comment                                         |
| ---------- | ---------- | ---------------- | ----------------------------------------------- |
| sport      | uint8      | 43 (windsurfing) | The sport field is usually present <sup>1</sup> |
| sub_sport  | uint8      | 0 (generic)      | The sub-sport field is optional <sup>2</sup>    |

Notes:

1. The list of sports is available in Profile.xlsx inside the [FIT SDK](https://developer.garmin.com/fit/download/) and documentation for [Toybox.Activity](https://developer.garmin.com/connect-iq/api-docs/Toybox/Activity.html).
2. The list of sub-sports is available in Profile.xlsx inside the [FIT SDK](https://developer.garmin.com/fit/download/) and documentation for [Toybox.Activity](https://developer.garmin.com/connect-iq/api-docs/Toybox/Activity.html).



### Speed Sailing Fields

Some additional fields have been proposed for Connect IQ applications and datafields to record some useful details.

| Field name  | Field type | Example        | Comment                                   |
| ----------- | ---------- | -------------- | ----------------------------------------- |
| app_name    | string     | APPro          | Free-form text                            |
| app_ver     | string     | 4.07           | Free-form text                            |
| craft       | string     | windsurf       | One of the recognised values <sup>1</sup> |
| gnss_config | uint8      | 6 (multi-band) | Garmin GNSS configuration <sup>2</sup>    |

Notes:

1. Five craft types are currently supported by APPro; windsurf, windfoil, kitesurf, kitefoil, and wingfoil.
2. The Garmin GNSS configuration is known to apps who enable location events. See [Toybox.Position](https://developer.garmin.com/connect-iq/api-docs/Toybox/Position.html#Configuration-module) for the values.