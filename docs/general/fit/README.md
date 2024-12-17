## FIT Fields

Author: Michael George

Created: 14 Dec 2024



### Overview

This document describes the useful metadata that is available in the FIT files from Garmin, COROS and some other watch manufacturers.



### Records

#### file_id

FIT files from COROS use the same product number for the APEX 2 and APEX 2 Pro. A simple workaround is proposed using the product_name field, mapping the APEX 2 to product number 821. More details about the issue are on [GitHub](https://github.com/Logiqx/gp3s-coros/issues/36).

| Name                       | Field / Value | Criteria                                            | Garmin? | COROS? |
| -------------------------- | ------------- | --------------------------------------------------- | :-----: | :----: |
| manufacturer <sup>1</sup>  | manufacturer  | -                                                   |    Y    |   Y    |
| product <sup>1 2</sup>     | product       | -                                                   |    Y    |   Y    |
|                            | 821           | product = 822 and product_name == "COROS Wearables" |    -    |   Y    |
| product_name <sup>1</sup>  | product_name  | -                                                   |    -    |   Y    |
|                            | "APEX 2"      | product = 822 and product_name == "COROS Wearables" |    -    |   Y    |
| serial_number <sup>3</sup> | serial_number | -                                                   |    Y    |   -    |

Notes:

1. Suunto and Timex also include manufacturer, product and product_name.
2. Garmin used to include garmin_product instead of product.
3. Timex also includes serial_number.

  

#### developer_data_id

The application details from the developer_data_id record can be used to identify the application downloaded from the Connect IQ Store, but not side-loaded betas.

n.b. The application_id in COROS files doesn't provide any useful insights.

| Name                | Field               | Criteria | Garmin? | COROS? |
| ------------------- | ------------------- | -------- | :-----: | :----: |
| application_id      | application_id      | -        |    Y    |   Y    |
| application_version | application_version | -        |    Y    |   -    |



#### session

The session record includes activity details that can be used to determine whether the Garmin settings meet the GP3S requirements.

| Name        | Field       | Criteria | Garmin? | COROS? |
| ----------- | ----------- | -------- | :-----: | :----: |
| sport       | sport       | -        |    Y    |   Y    |
| sub_sport   | sub_sport   | -        |    Y    |   -    |
| craft       | craft       | -        |  APPro  |   -    |
| app_name    | app_name    | -        |  APPro  |   -    |
| app_ver     | app_ver     | -        |  APPro  |   -    |
| gnss_config | gnss_config | -        |  APPro  |   -    |

Criteria for approved Garmin devices to receive the green icon on GP3S:

- sport is either 0 (SPORT_GENERIC), 43 (SPORT_WINDSURFING), or 44 (SPORT_KITESURFING)
- gnss_config is either 5 (CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1) or 6 (CONFIGURATION_GPS_GLONASS_GALILEO_BEIDOU_L1_L5)

n.b. There is an additional approval process for individual watch models.



#### field_description

The developer fields in a COROS file can be used to determine whether the session uses the speedsurfing mode.

| Name      | Value | Criteria (where exists)     | Garmin? |    COROS?    |
| --------- | ----- | --------------------------- | :-----: | :----------: |
| flag_hdop | True  | lower(field_name) == 'hdop' |    -    | speedsurfing |
| flag_cog  | True  | lower(field_name) == 'cog'  |    -    | speedsurfing |
| flag_sats | True  | lower(field_name) == 'sat'  |    -    | speedsurfing |
| flag_fix  | True  | field_name == 'fix_quality' |  APPro  |      -       |

Criteria for approved COROS devices to receive the green icon:

- One or more of flag_hdop, flag_cog, or flag_sats must be true
- This confirms whether the speedsurfing mode has been used, or not



#### device_info

The firmware and GNSS version could prove to be extremely useful in the future, should any bad firmware be released.

n.b. Garmin watches back in early-mid 2022 experienced the issues that COROS have introduced to some of their Airoha-based watches during 2024.

| Name             | Field            | Criteria                                         | Garmin? | COROS? |
| ---------------- | ---------------- | ------------------------------------------------ | :-----: | :----: |
| firmware_version | software_version | device_type is empty, or device_index == creator |    Y    |   -    |
| gnss_version     | software_version | device_type == 0                                 |    Y    |   -    |
|                  |                  |                                                  |         |        |

