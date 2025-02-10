## Garmin FIT - device_info

### Overview

The *device_info* record varies considerably for different watch manufacturers.

Garmin devices record details such as the serial number, software / firmware version, driver versions, etc.



### Fields

| Field name       | Field type | Example      | Comment                                              |
| ---------------- | ---------- | ------------ | ---------------------------------------------------- |
| timestamp        | uint32     |              | Seconds since the Garmin epoch 1989–12–31T00:00:00Z  |
| device_index     | uint8      | 2            | The watch itself is assigned device index 0          |
| device_type      | uint8      | 0 (gps)      | Local device type when source_type is 5 <sup>1</sup> |
| manufacturer     | uint16     | 1 (garmin)   | Numeric assigned to the manufacturer <sup>2</sup>    |
| product          | uint16     | 3992 (fr255) | Numeric assigned to the product <sup>3</sup>         |
| serial_number    | uint32     | 3438044558   | Optional numeric <sup>4</sup>                        |
| software_version | uint16     | 270          | Software / firmware version, minus the decimal point |
| source_type      | uint8      | 5 (local)    | Typically 5 (local / onboard device)                 |
| product_name     | string     |              | Optional free-form string <sup>5</sup>               |

Notes:

1. The list of local device types is available in Profile.xlsx inside the [FIT SDK](https://developer.garmin.com/fit/download/).
2. The list of manufacturers is available in Profile.xlsx inside the [FIT SDK](https://developer.garmin.com/fit/download/).
3. The list of Garmin products is available in Profile.xlsx inside the [FIT SDK](https://developer.garmin.com/fit/download/), although the list is incomplete.
4. Garmin does record the serial number, unlike brands such as COROS and Suunto.
5. Garmin does not record *product_name* in their FIT files.

