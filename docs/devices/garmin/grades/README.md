## Garmin Watches

### Introduction

This document has been created to illustrate how Garmin watches might be regarded for speed sailing.

- Some of the more recent Garmin watches may deserve a green icon (e.g. Airoha chipset), but only when using an approved app + settings.
- Slightly older watches such as the Fenix 6 and Instinct 2 (e.g. Sony chipset) may deserve a yellow icon, but only with an approved app + settings.
- All other watches should simply be a grey icon, and will typically be without multi-GNSS support.

Note: Garmin watches using a Sony chipset will typically be comparable to the COROS APEX Pro and VERTIX, but only deserve a yellow icon.

|              Icon              | Grade | Generalization                                           | Examples                             |
| :----------------------------: | :---: | -------------------------------------------------------- | ------------------------------------ |
| ![status-2](img/status-2s.png) |   A   | Airoha chipset using an approved app + settings          | Forerunner 255, fenix 7, Instinct 2X |
| ![status-1](img/status-1s.png) |   B   | Sony / MediaTek chipset using an approved app + settings | Forerunner 935, fenix 6, Instinct 2  |
| ![status-0](img/status-0s.png) |   C   | Anything else, typically without multi-GNSS support      | Forerunner 920XT                     |



### Unapproved Apps

Failure to use an approved app and / or settings for a session should result in a downgrade.

Note: This logic would apply to new sessions when they are posted, but a one-off activity could also update historical Garmin sessions.

|              Icon              | Grade | Generalization                                               | Examples                             |
| :----------------------------: | :---: | ------------------------------------------------------------ | ------------------------------------ |
| ![status-1](img/status-1s.png) |   B   | Airoha chipset NOT using an approved app + settings          | Forerunner 255, fenix 7, Instinct 2X |
| ![status-0](img/status-0s.png) |   C   | Sony / MediaTek chipset NOT using an approved app + settings | Forerunner 935, fenix 6, Instinct 2  |
| ![status-0](img/status-0s.png) |   C   | Anything else, typically without multi-GNSS support          | Forerunner 920XT                     |



### Grade A+ and A++

Devices such as the Motion and ESP may be considered grade A++ due to their high accuracy, 5 or 10 Hz logging, and accuracy estimates. This can be denoted by a ++ alongside the satellite image on the session page.

Should Garmin provide accuracy estimates for their Airoha-based watches (which can then be written to the FIT file by an approved app), there is scope for Garmin sessions containing accuracy estimates to be regarded as grade A+.



### Categorisation

Watch models are represented as a simple integer, which is present in the FIT file of the session. The FIT SDK lists of all the integer values and their corresponding model names so it is easy to determine the watch model for a session.

The GNSS chipset inside the various Garmin watches has been determined and [documented](../watches/README.md). It should therefore be possible to quickly categorise all of the Garmin watches and assign a green / yellow status for future sessions that use an approved app + settings.

Unidentified watches should simply receive a grey icon. If the watch model happens to be a new watch and yet to be categorized then the session can potentially be reposted at a later date to be awarded the green (or yellow) icon.



### Prudence

Categorization (green, yellow, or grey) of new watches added to the database should err on the side of caution.

- Watches that are unrecognized should receive a grey icon by default.
- New watches added to the database should initially be allocated a yellow icon (even Airoha), prior to evaluation / testing.
- Once a new watch has been verified, the database can be updated so that future sessions receive a green icon.



### FIT vs GPX

FIT files from approved apps will contain additional information which identifies the GNSS settings, and fix quality. It is worth mentioning that FIT files have a complex structure and are therefore less susceptible to hacking than the fixed structures of SBN, SBP, UBX, OAO, etc.

GPX not only has compatibility issues (especially when it comes to Doppler speeds), but they are highly susceptible to the editing of speeds. It may therefore be worth dropping support for GPX uploads (via the web interface) since COROS, Garmin and Suunto all support FIT. Users can either upload the FIT, or make use of the integrations (automatic posting) provided by COROS, Garmin, Suunto and Waterspeed.

Should anyone try to be clever and convert GPX files (or anything else) to FIT using a tool such as [GPSBabel](https://www.gpsbabel.org/) then the file will not contain the information that is written by approved apps and as such, it would receive a grey icon.

