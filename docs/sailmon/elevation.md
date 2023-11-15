## Sailmon Observations

### Elevation

#### Overview

The CSV does not include elevation, and neither does the GPX export. The GPX export actually says `<ele>0</ele>` for each `<trkpt>` which does not conform to the spec. The intention is that the `<ele>` element only be included in GPX files if the elevation it is known.

It would be useful to include the actual altitude / elevation data in the GPX file since not all watersports take place at sea level. There is of course the whole topic of the WGS 84 ellipsoid and the associated geoid, but that is probably too much detail for this report.