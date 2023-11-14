## Sailmon Observations

### Speed Data

#### Background

I'd like to think that the developers at Sailmon are familiar with the inner workings of GPS / GNSS chipsets and that they use the Doppler [observable](https://gssc.esa.int/navipedia/index.php/GNSS_Basic_Observables) to determine velocity / speed over ground. However, I'll write a quick summary in this document and link to another page with further details about Doppler derived speeds, which includes links to some papers on the subject.

GPS / GNSS receivers are able to produce PVT solutions (position, velocity and time). It is common knowledge that with 4 or more satellites you can determine a position in [ECEF](https://en.wikipedia.org/wiki/Earth-centered,_Earth-fixed_coordinate_system) (subsequently converted to latitude / longitude / altitude) and the time via [trilateration](https://en.wikipedia.org/wiki/Trilateration). What is less commonly known is that velocity (subsequently converted to course / speed over ground - COG / SOG) is calculated completely independently of position.

There are a number of [methods](https://insidegnss.com/wp-content/uploads/2018/01/marapr15-SOLUTIONS.pdf) by which velocity can be calculated by a GPS / GNSS receiver but by far the most common one uses the Doppler observable for each of the satellites in view. The Doppler approach is far more accurate than simply calculating velocity from latitude and longitude pairs. This is because the [Doppler](https://gssc.esa.int/navipedia/index.php/GNSS_Basic_Observables#Doppler_shift) observable is not subject to the majority of atmospheric effects / errors affecting the [pseudorange](https://gssc.esa.int/navipedia/index.php/GNSS_Basic_Observables#Pseudorange) observable.

I'll link to another page that I wrote as part of a recent proposal for the GPX format - https://logiqx.github.io/gpx-ideas/proposal/speed.html



#### Sailmon Data

The following image shows a comparison of doppler derived speed (red) and position derived speed (blue) on the Sailmon Max. Both sets of data have been extracted from the CSV export of a Sailmon Max.

![doppler.png](img/doppler.png)

You might be forgiven for thinking that the red line is just a smoothed version of the blue one, but that is not the case. They have been calculated independently of one another and the benefits of the doppler derived speed (red) should be immediately apparent.

The next graph shows how these differences can be even more pronounced when the GPS / GNSS receiver loses its lock on the satellites. When the signal is lost after a crash, large spikes are evident in the position derived speeds (blue), but not the Doppler derived speeds (red).

![doppler.png](img/spikes.png)

Hopefully these two simple examples show how the Doppler derived speed is far superior to the positional derived speed. When using speeds from the Sailmon Max and posting to sites such as [gps-speedsurfing.com](https://www.gps-speedsurfing.com/) it is really important to retain and use the Doppler derived speeds.



#### GPX Exports

Sailmon provides two formats for their data exports - CSV and GPX. The CSV format includes the Doppler derived speeds but the GPX file only includes the positional data. It would be extremely beneficial if Sailmon could include Doppler derived speeds in their GPX exports.

Firstly, a brief piece of history. Back in 2004 the GPX developers accidentally removed speed from the GPX 1.1 schema. It went unnoticed at the time and and ever since that time, GPX 1.1 files typically do not include any speeds, or sometimes include speeds using non-standard approaches.

There is however a legitimate way to include the speed data in GPX 1.1 files, and relatively simple for Sailmon to implement. I documented a number of general [approaches](https://logiqx.github.io/gps-wizard/gpx/speed.html) last year, but the most applicable option for Sailmon is Garmin's [TrackpointExtension](https://www8.garmin.com/xmlschemas/TrackPointExtensionv2.xsd) v2.

Sailmon currently uses [phpGPX](https://github.com/Sibyx/phpGPX) for their GPX exports, which provides support for Garmin's TrackpointExtension v1 and v2. The commit history on GitHub shows full support for TrackpointExtension v2 was added in [2017](https://github.com/Sibyx/phpGPX/commit/bc6e2578b4f1fd94f0f231b8d6a9ab315b3394ee).

It should therefore be a simple matter to get Sailmon to export speed in its GPX 1.1 files. Since GPX is the most widely used file type for speed analysis this would be a great addition for windsurfers, windfoilers and wingfoilers who own the Sailmon Max.
