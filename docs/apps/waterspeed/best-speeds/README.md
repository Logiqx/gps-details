## Waterspeed - Best Speeds

Author: Michael George

Created: 29 July 2025



### Overview

People have been reporting unusually high results for 2 seconds in the Waterspeed app, such as this Forerunner 255 session from Richard G.

This session shows a max 2 seconds of 42.5 kts but it should be reported as 31.4 kts, based on what was recorded in the FIT.

![richard-g.jpg](img/richard-g.jpg)

Errors of this magnitude have not been observed for the Forerunner 255, so this investigation was undertaken to look at how results are calculated by Waterspeed.



### Background

The benefits of using Doppler-derived speeds from GPS / GNSS receivers have been closely studied since the mid-to-late 1990s.

Two papers specific to speed sailing were written in 2007 and are just as relevant today as they were nearly 20 years ago.

- [High accuracy speed measurement using GPS](https://studylib.net/doc/18795194/high-accuracy-speed-measurement-using-gps) by Tom Chalko PhD
- [Handheld-GPS based Speed-Measurements](https://web.archive.org/web/20120531035620/http://www.gps-results.com/GPS_Speed.pdf) by Manfred Fuchs PhD

One of my recent Medium articles also uses some modern-day examples to illustrate the benefits of Doppler-derived speeds.

- [The Importance of Doppler!](https://medium.com/@mikeg888/the-importance-of-doppler-b886b14bb65d) by Michael George



### Waterspeed App

A variety of test files have been used to ascertain how Waterspeed is doing its speed calculations.

1. Recent windsurfing session using a Garmin fenix 7 Pro - [link](session-1/README.md)
2. Past windsurfing session using the speedsurfing mode of a COROS APEX Pro - [link](session-2/README.md)
3. Indoor skating sessions (open roof) using a Garmin epix Pro - [link](session-3/README.md)
4. Past wingfoiling session using the windsurfing mode of a COROS APEX Pro - [link](session-4/README.md)
5. Driving session using the speedsurfing mode of a COROS APEX Pro - [link](session-5/README.md)

These sessions were specifically chosen for their different characteristics and potential for diagnostics, each one documented individually.



### Findings

- Doppler speed used for speed graph, summary stats, Foiling/Planing and Tacks & Jibes
- Position-derived speeds are used for the majority of the top speed stats
- Recorded speeds seem to influence the 5 sec and 10 sec results but the calculation is unclear
- GPX import doesn't use speed data when present; e.g. GPX 1.0, GPX 1.1 (Waterspeed) and GPX 1.1 (COROS)
- Alpha results are often incorrect



### Next Steps

Hopefully this investigation is sufficient to set Waterspeed on the path to using the speed data that is present in FIT files.

Modern watches record the Doppler-derived speed in this field (when using an appropriate activity type) and ignoring it will often lead to erroneous results. The Doppler-derived speeds are the foundation for accurate speed statistics, but additional filters are also beneficial.

I'd be happy to discuss further in the interests of the wider community.
