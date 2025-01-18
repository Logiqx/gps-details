## Garmin - Filtering

Author: Michael George

Created: 18 Jan 2024



### Introduction

This article is a continuation of the previous investigation into the [GPS Metadata](../metadata/README.md) of Garmin FIT files.

Whilst the original article used the data from a short walk, this new article looks at the data from short drives.



### Sport Profiles

#### Windsurfing

The windsurfing activity does not implement any significant filtering of the Doppler-derived speeds.

This can be seen when comparing the FIT records (blue) against the data from a Motion GPS (red).

![windsurf-speedreader](img/windsurf-speedreader.png)



The GPS metadata (orange) in the FIT file does not match the speeds in the FIT records (blue). It can be seen that the speeds in GPS Metadata are filtered / smoothed and there are some peculiar drop-offs in the speed.

![windsurf-fit](img/windsurf-fit.png)



#### Kayak

The kayaking sport profile is already known to implement heavy filtering, just like stand up paddling.

This can be seen when comparing the FIT records (blue) against the data from a Motion GPS (red).

![kayak-speedreader](img/kayak-speedreader.png)



The GPS metadata (orange) is clearly not the raw Doppler-derived speeds, but appears to use similar filtering to the windsurfing sport profile. Note the presence of peculiar drop-offs in the speed, just like the windsurfing example.

![kayak-fit](img/kayak-fit.png)



### Hypothesis

- The FIT records contain speed data that has been filtered (or not) according to the sport profile.
- The GPS metadata contains speed data that has been through a generic filter, perhaps used for pace information?



### Validation

#### Approach

To test the hypothesis, two Garmin watches recording the same drive will be directly compared.

- Kayaking sport profile - heavy filtering
- Generic sport profile - no significant filtering

The expectation is for the GPS metadata to be near-identical from both watches, whilst the speed in FIT records differs greatly.



#### Results

Let's begin with a comparison of the various files in GPS Speedreader.

- Kayaking - blue
- Other - red
- Motion GPS - green

Aside from the usual 1 second delay it can be seen how the "other" activity (red) compares favorably to the Motion (green), whilst the kayaking activity (blue) implements some heavy filtering.

![comparison-speedreader](img/comparison-speedreader.png)



Just as a sanity check the data from the FIT records can also be plotted in Excel.

![comparison-record](img/comparison-record.png)



The comparison of the two FIT files confirms that the filtering of GPS metadata is identical for both activities.

![comparison-metadata](img/comparison-metadata.png)



### Conclusions

- The various sport profiles on Garmin watches apply filtering to the speed data, whatever is is deemed appropriate for the sport / activity.
  - There are activities with minimal filtering (e.g. windsurfing, kiteboarding, other).
  - There are activities with heavy filtering (e.g. kayaking, stand up paddleboarding, surfing).
- The GPS metadata contains speed data which has been filtered, but in a consist manner regardless of the activity.
  - It is nowhere near as extreme as activities such as kayaking, stand up paddleboarding, surfing).
  - It is still unsuitable for speed sailing because of the peculiar drop-offs.
- The filtering used for GPS metadata appears to be very similar to the FIT records on Garmin watches during 2022.
  - Subsequent testing might compare FIT records and GPS metadata for some data from early 2022.
  - The filtering is also reminiscent to the problematic COROS firmware(s) that were released during 2024.
- The purpose of the speeds in GPS metadata is unclear as they are not used by Garmin Connect.
  - Perhaps it is used for pace information, since activities with lots of arm movement benefit from the filtering / smoothing?
