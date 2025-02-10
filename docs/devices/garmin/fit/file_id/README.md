## Garmin FIT - file_id

### Overview

The *file_id* record must be first message in file and is useful for identifying the device.

Some manufacturers provide *product* and *product_name*, but some manufacturers only *product* or *product_name*.



### Fields

| Field name    | Field type | Example      | Comment                                             |
| ------------- | ---------- | ------------ | --------------------------------------------------- |
| type          | uint8      | 4 (activity) | Typically an activity                               |
| manufacturer  | unit16     | 1 (garmin)   | Numeric assigned to the manufacturer <sup>1</sup>   |
| product       | uint16     | 3992 (fr255) | Numeric assigned to the product <sup>2</sup>        |
| serial_number | uint32     | 3438044558   | Optional numeric <sup>3</sup>                       |
| time_created  | uint32     |              | Seconds since the Garmin epoch 1989–12–31T00:00:00Z |
| product_name  | string     |              | Optional free-form string <sup>4</sup>              |

Notes:

1. The list of manufacturers is available in Profile.xlsx inside the [FIT SDK](https://developer.garmin.com/fit/download/).
2. The list of Garmin products is available in Profile.xlsx inside the [FIT SDK](https://developer.garmin.com/fit/download/), although the list is incomplete.
3. Garmin does record the serial number, unlike brands such as COROS and Suunto.
4. Garmin does not record *product_name* in their FIT files.

