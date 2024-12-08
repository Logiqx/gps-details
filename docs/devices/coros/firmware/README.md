## COROS Firmware

### Background

Several COROS firmware releases during 2024 have been problematic for the speedsurfing community. This page captures the various issues, listing the 2024 firmware releases in reverse-chronological order.

Current status:

- Owners of an APEX Pro or VERTIX with firmware 3.0508.0 (released Aug 2024) are encouraged to [downgrade](downgrade.md) to 3.0309.0.
- Owners of the APEX 2 and APEX 2 Pro are advised to upgrade to firmware 3.0708.0
- Owners of a VERTIX 2 or 2S are advised to avoid the firmware 3.04xx.0, 3.05xx.0, and 3.0708.0.

Prior to reviewing the details on this page it is advisable to read the article about [sampling rates and aliasing](../../../general/aliasing/README.md). It would also be beneficial to read the [article](../windsurfing/README.md) comparing the windsurfing and speedsurfing activities on COROS watches.



### Summary

This table is a summary of the COROS firmware releases since the beginning of 2024.

- 😊🤙 = working
- 😐🤞 = ok-ish
- 😡👎 = broken

|               | APEX Pro | VERTIX | APEX 2 | APEX 2 Pro | VERTIX 2 | VERTIX 2S |
| :------- | :--------: | :--------: | :--------: | :--------: | :--------: | :--------: |
| [3.0709.0](3.0709.0/README.md) |  |  | ? | ? | 😡👎 | 😡👎 |
| [3.0708.1113](3.0708.1113/README.md) beta | - | - | - | - | 😊🤙 | 😊🤙 |
| [3.0708.0](3.0708.0/README.md) | - | - | 😊🤙 | 😊🤙 | 😡👎 | 😡👎 |
| [3.0706.0](3.0706.0/README.md) beta | - | - | 😊🤙 | 😊🤙 | 😡👎 | 😡👎 |
| [3.0510.0](3.0510.0/README.md) | - | - | 😐🤞 | 😐🤞 | 😐🤞 | 😐🤞 |
| [3.0508.0](3.0508.0/README.md) | 😡👎 | 😡👎 | 😐🤞 | 😐🤞 | 😐🤞 | 😐🤞 |
| [3.0506.0](3.0506.0/README.md) beta | - | - | 😐🤞 | 😐🤞 | 😐🤞 | 😐🤞 |
| [3.0409.0](3.0409.0/README.md) | 😊🤙 | 😊🤙 | 😡👎 | 😡👎 | 😡👎 | 😡👎 |
| [3.0408.0](3.0408.0/README.md) | - | - | 😡👎 | 😡👎 | 😡👎 | 😡👎 |
| [3.0309.0](3.0309.0/README.md) | 😊🤙 | 😊🤙 |     -      |     -      |     -      |     -     |
| [3.0308.0](3.0308.0/README.md) |     -      |     -      | 😊🤙 | 😊🤙 | 😊🤙 | - |



### Distinct Behaviors

There have been four distinct behaviors for speedsurfing activities during 2024:

- **Jan 2024** - 3.03xx.0 - original behavior, similar in many respects to the Garmin watches in 2024.
- **May - Jun 2024** - 3.04xx.0 - smoothing issues on APEX 2 / APEX 2 Pro / VERTIX 2, reminiscent of Garmin watches in 2022.
- **Jul - Aug 2024** - 3.05xx.0 - speedsurfing behaves much like windsurfing, which is non-doppler and prone to errors / spikes.
- **Sep - Nov 2024** - 3.0708.0 - fixes the May to Aug issues on the APEX 2 and APEX 2 Pro, but it breaks the VERTIX 2 + 2S.



### Official Release Notes

The official COROS release notes are often out of date and do not mention any of the changes in behavior:

- [APEX Pro](https://support.coros.com/hc/en-us/articles/20084448124052-COROS-APEX-Pro-Release-Notes)
- [APEX 2](https://support.coros.com/hc/en-us/articles/20087491155092-COROS-APEX-2-Release-Notes)
- [APEX 2 Pro](https://support.coros.com/hc/en-us/articles/20087492454932-COROS-APEX-2-Pro-Release-Notes)
- [VERTIX](https://support.coros.com/hc/en-us/articles/20086432465044-COROS-VERTIX-Release-Notes)
- [VERTIX 2 / 2S](https://support.coros.com/hc/en-us/articles/20087327564820-COROS-VERTIX-2-Release-Notes)



### Firmware History

#### Sep - Nov 2024

The beta release 3.0706.0 appears to fix the issues between May and Aug 2024, but only on the APEX 2 and APEX 2 Pro.

The VERTIX 2 + 2S are broken and have reverted back to the behavior of 3.040x.0 in May 2024.

|               | APEX Pro | VERTIX | APEX 2 | APEX 2 Pro | VERTIX 2 / 2S |
| :------- | :--------: | :--------: | :--------: | :--------: | :--------: |
| [3.0709.0](3.0709.0/README.md) |  |  | 2024-12-03 | 2024-12-03 | 2024-12-03 |
| [3.0708.1113](3.0708.1113/README.md) beta | - | - | 2024-11-13 | 2024-11-13 | 2024-11-13 |
| [3.0708.0](3.0708.0/README.md) | - | - | 2024-10-15 | 2024-10-15 | 2024-10-15 |
| [3.0706.0](3.0706.0/README.md) beta | - | - | 2024-09-13 | 2024-09-13 | 2024-09-13 |



#### Jul - Aug 2024

The 3.05xx.0 releases exhibit issues because speedsurfing behaves much like windsurfing, which is non-doppler and thus prone to spikes.

Owners of an APEX Pro or VERTIX with firmware 3.050x.0 (released Aug 2024) are advised to [downgrade](downgrade.md) to 3.0309.0.

|               | APEX Pro   | VERTIX | APEX 2 | APEX 2 Pro | VERTIX 2 / 2S |
| :------- | :--------: | :--------: | :--------: | :--------: | :--------: |
| [3.0510.0](3.0510.0/README.md) | - | - | 2024-08-02 | 2024-08-02 | 2024-08-02 |
| [3.0508.0](3.0508.0/README.md) | 2024-08-07 | 2024-08-07 | 2024-07-15 | 2024-07-15 | 2024-07-15 |
| [3.0506.0](3.0506.0/README.md) beta | - | - | 2024-07-01 | 2024-07-01 | 2024-07-01 |



#### May - Jun 2024

The 3.04xx.0 releases exhibit major smoothing issues on Airoha watches (APEX 2, APEX 2 Pro, VERTIX 2), reminiscent of Garmin watches in 2022.

The smoothing issues do not affect the Sony watches (APEX Pro, VERTIX).


|          | APEX Pro   | VERTIX | APEX 2 | APEX 2 Pro | VERTIX 2 / 2S |
| :------- | :--------: | :--------: | :--------: | :--------: | :--------: |
| [3.0409.0](3.0409.0/README.md) | 2024-06-06 | 2024-06-06 | 2024-05-21 | 2024-05-21 | 2024-05-21 |
| [3.0408.0](3.0408.0/README.md) | - | - | 2024-05-10 | 2024-05-10 | 2024-05-10 |



#### Jan 2024

The 3.03xx.0 releases exhibit the original behavior, similar in many respects to the Garmin watches in 2024.

However, unique to the COROS is the temporal offset issue on the APEX 2, APEX 2 Pro, VERTIX 2 which causes [fantasy alphas](../alpha/README.md).

Owners of an APEX Pro or VERTIX with firmware 3.050x.0 (released Aug 2024) are encouraged to [downgrade](downgrade.md) to 3.0309.0.


|                                |  APEX Pro  |   VERTIX   |   APEX 2   | APEX 2 Pro |  VERTIX 2  |
| :----------------------------- | :--------: | :--------: | :--------: | :--------: | :--------: |
| [3.0309.0](3.0309.0/README.md) | 2024-01-31 | 2024-01-31 |     -      |     -      |     -      |
| [3.0308.0](3.0308.0/README.md) |     -      |     -      | 2024-01-31 | 2024-01-31 | 2024-01-31 |

