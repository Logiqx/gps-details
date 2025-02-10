## Garmin FIT - developer_data_id

### Overview

The *developer_data_id* record must be logged before [*field_description*](../field_description/README.md) records.



### Fields

| Field name           | Field type   | Example | Comment                                                      |
| -------------------- | ------------ | ------- | ------------------------------------------------------------ |
| developer_id         | array(uint8) |         | The developer ID is optional, and rarely present             |
| application_id       | array(uint8) |         | The application ID is mandatory                              |
| manufacturer_id      | uint16       |         | The developer ID is optional, but used by COROS              |
| developer_data_index | uint8        | 0       | The developer data index is mandatory                        |
| application_version  | uint32       | 31      | The application version is optional, but used by Garmin apps |

