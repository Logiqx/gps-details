## Garmin Developer Tips

Author: Michael George

Last updated: 25 Nov 2026



### Introduction

These pages are to provide guidance to developers of Connect IQ apps.

Following this advice will ensure the best possible data quality and improve the downstream processing.



### Data Quality

Full details are on separate pages, so click the links for further information.

- [Sport / activity mode](suitable-sports.md)
  - Use the sports windsurfing or kitesurfing for Doppler-derived speeds
  - Names should be "Windsurf" or "Kitesurf" (i.e. not ending with "ing")
- [GNSS configuration](gnss-config.md)
  - Use the best possible GNSS configuration for the watch
  - Do NOT allow SatIQ modes that degrade GNSS performance
- [Session fields](session-fields.md)
  - App details - app name, app ver
  - Craft details - craft
  - GNSS details - gnss config
- [Record fields](record-fields.md)
  - PVT data - fix quality, sog, cog, hae
  - Diagnostic data - timer, elapsed



### User Interface

- [Data Recording](data-recording.md)
- [Fix Quality](fix-quality.md)



### Data Review

- [Sport / activity mode](suitable-sports.md)
  - Check the sport is either windsurfing, kitesurfing, or generic
  - Check the name is something like "Windsurf" or "Kiteboard" (i.e. not ending with "ing")
- [GPS Events](gps-events.md)
  - Check that the best possible GNSS configuration is being selected
  - Look for multiple GPS start up events in one session, and event type 3 appearing at startup
  - Look for unexpected GNSS events (e.g. mode change) at end of session
- [Session fields](session-fields.md)
  - Check the app details - app name, app ver
  - Check the craft details - craft
  - Check the GNSS details - gnss config
- [Record fields](record-fields.md)
  - Check for PVT data - fix quality, sog, cog, hae
  - Check for diagnostic data - timer, elapsed




### Future Ideas

- [Accuracy Estimates](accuracy-estimates.md)
- [Data Quality](data-quality.md)



