## Garmin Apps

### Recommendations

I looked at every windsurfing-related app and datafield on the Connect IQ store, but settled on the following:

- [APPro Windsurf](https://apps.garmin.com/apps/9567700b-6587-44be-9708-879bfc844791) by Scott Simms
  - This app supports windsurf and kitesurf activity profiles, plus multi-band.
- [Windsurfing Application](https://apps.garmin.com/apps/9d47be43-2724-44e4-8f5e-3005b0766087) by ViVSurfer
  - This app always records sessions using the windsurf activity profile and always uses multi-band.
- [GPSTC V4](https://apps.garmin.com/apps/f0f3fbd5-9de3-4d69-b89b-10b76d6a9f0f) by TBWonder (Andrew Haigh)
  - This is a datafield, so it requires the user to use an appropriate activity profile and GNSS setting.



### Notes

Here are some general comments about third party apps:

- It is crucial that apps select the appropriate activity profile (e.g. windsurf) and GNSS mode.
  - The default behavior of third party app is standard GPS, which often does not perform well.
  - Datafields are reliant upon the user selecting a suitable activity profile and GNSS mode.
  - It was off the back of this that I created some example code for the [GNSS config](../developer/gnss-config.md) on different watches.
- Further tips and advice for Garmin app developers are on a dedicated [developer](../developer/README.md) page.

