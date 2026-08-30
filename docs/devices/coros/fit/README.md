## COROS FIT

Author: Michael George

Created: 22 Sep 2024

Updated: 11 Feb 2025



### Overview

It would be beneficial if the COROS FIT files contained some additional metadata to assist with analysis and diagnostics.

This brief document lists the various pieces of metadata in the hopes that they can be included in the future.

The request for additional metadata was first made in a Github repository in May 2022 - see [link](https://github.com/Logiqx/gp3s-coros/issues/16).



### Useful Information

#### Satellite Systems

System -> More Settings -> Satellite Systems -> Mode.

e.g. Standard GPS, All Systems, Dual Frequency.

It would be really helpful if the satellite systems used for an activity were to be recorded in the FIT file.



#### Watch Firmware

System -> More Settings -> Device Info -> Firmware.

There is currently no way to determine which version of the firmware used to record the activity.

This is documented on GitHub in issue [#16](https://github.com/Logiqx/gp3s-coros/issues/16).



#### Serial Number

System -> More Settings -> Device Info -> Serial Number.

There is currently no way to determine the serial number of the watch used to record the activity.

This is documented on GitHub in issue [#16](https://github.com/Logiqx/gp3s-coros/issues/16).



#### GNSS Firmware

System -> More Settings -> Device Info -> Satellite Systems.

There is no way to determine which version of the GNSS firmware was used to record the activity.

It would be helpful if the GNSS firmware version was recorded in the FIT file.

