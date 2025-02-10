## Garmin FIT - developer_data_id

### Overview

The *developer_data_id* record must be logged before any [*field_description*](../field_description/README.md) record(s).



### Fields

| Field name           | Field type  | Example | Comment                                                      |
| -------------------- | ----------- | ------- | ------------------------------------------------------------ |
| developer_id         | uint8 array |         | The developer ID is optional, and rarely present             |
| application_id       | uint8 array |         | The application ID is mandatory                              |
| manufacturer_id      | uint16      |         | The manufacturer ID is optional, but used by COROS <sup>1</sup> |
| developer_data_index | uint8       | 0       | The developer data index is mandatory                        |
| application_version  | uint32      | 31      | The application version is optional, but used by Connect IQ  |

Notes:

1. The list of manufacturers is available in Profile.xlsx inside the [FIT SDK](https://developer.garmin.com/fit/download/).

