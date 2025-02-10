## Garmin FIT - field_description

### Overview

The *field_description* records must be logged after the [*developer_data_id*](../developer_data_id/README.md) record(s).



### Fields

| Field name              | Field type | Example       | Comment                                       |
| ----------------------- | ---------- | ------------- | --------------------------------------------- |
| developer_data_index    | uint8      | 0             | The developer data index is mandatory         |
| field_definition_number | uint8      | 5             | The field definition number is mandatory      |
| fit_base_type_id        | uint8      | 136 (float32) | The FIT base type is mandatory <sup>1 2</sup> |
| field_name              | string     | cog           | The field name is mandatory                   |
| native_mesg_num         | uint16     | 20 (record)   | Typically 18 (session) or 20 (record)         |
| units                   | string     | deg           | Units are optional, sometimes not applicable  |

Notes:

1. The list of FIT base types is available in Profile.xlsx inside the [FIT SDK](https://developer.garmin.com/fit/download/).
2. The FIT base types and invalid values are also listed in Table 7 of the [FIT protocol](https://developer.garmin.com/fit/protocol/).



### Scaling and Offset

Garmin appear to discourage the use of scaling and offset for developer fields. The following quotes are from the [FIT Protocol](https://developer.garmin.com/fit/protocol/).

> Developer Fields that override native FIT fields shall preserve the units defined for that field in the Profile.xlsx document. Scaling and offset defined in Profile.xlsx for the native data fields shall not be applied to the developer data field. Instead, the developer data field shall be logged with full precision and resolution using the appropriate base data type.
>
> For example, if overriding total_hemoglobin_conc in the record message, which has a scaling of 100, the developer data field should be logged as a float (to keep two decimal places of precision).
>
> Developer fields will be written to the FIT file in such a way that decoders do not need to manipulate them in any way. Decoders that are consuming developer data should not trust that developer data is logged correctly. It is still strongly recommended to do some basic data verification before attempting to display it.

FIT files from Suunto watches do make use of scale, but speedsurfing applications should simply record the native float types, where applicable.



### Native Field Num

There is a capability to say that a developer field is equivalent to a core field, according to the official [FIT Protocol](https://developer.garmin.com/fit/protocol/).

> The native_field_num field is used to indicate that a field can be considered equivalent to the corresponding field_number in the message that the developer data is included in. This field can be used to indicate to data consumers that the developer considers its data to be the same as native data.