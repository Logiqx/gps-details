## Garmin Developer Tips - GPS Events

### Overview

FIT files from newer Garmin devices contain records for the GPS Events.

These can easily be viewed using the online [FIT File Viewer](https://www.fitfileviewer.com/). The developer mode allows you to see the underlying values.

GPS event type 49 indicates a mode change and the mode itself is a 16-bit value, indicating the systems / signals.



### Bitmasks

It is possible to determine what the various bits represent based on various test files.

Least significant byte:

```
00000001 = GPS L1
00000010 = GLONASS
00010000 = QZSS L1
01000000 = Galileo E1
10000000 = BeiDou B1I
--?-??-- = Unknown / Unused
```

Most significant byte:

```
00000001 = SatIQ - Auto Select
------?- = Unknown
00011100 = GPS L5, Galileo E5a, BeiDou B2a
00100000 = QZSS L5
??------ = Unknown / Unused
```



### GPS Only

| Satellites Setting      | Dec  | Bin               |
| ----------------------- | ---- | ----------------- |
| GPS L1                  | 1    | 00000000 00000001 |
| GPS L1, QZSS L1         | 17   | 00000000 00010001 |
| SatIQ - GPS L1, QZSS L1 | 273  | 00000001 00010001 |



### Multi-GNSS

| Satellites Setting                                       | Dec  | Bin               |
| -------------------------------------------------------- | ---- | ----------------- |
| GPS L1, Galileo E1                                       | 65   | 00000000 01000001 |
| GPS L1, GLONASS, Galileo E1, BeiDou B1I                  | 195  | 00000000 11000011 |
| GPS L1, QZSS L1, GLONASS, Galileo E1, BeiDou B1I         | 211  | 00000000 11010011 |
| SatIQ - GPS L1, QZSS L1, GLONASS, Galileo E1, BeiDou B1I | 467  | 00000001 11010011 |



### All + Multi-Band

| Satellites Setting                                           | Dec   | Bin               |
| ------------------------------------------------------------ | ----- | ----------------- |
| GPS L1+L5, GLONASS, Galileo E1+E5a, BeiDou B1I+B2a | 7363 | 00011100 11000011 |
| GPS L1+L5, QZSS L1+L5, GLONASS, Galileo E1+E5a, BeiDou B1I+B2a | 15571 | 00111100 11010011 |
| GPS L1+L5, QZSS L1+L5, GLONASS, Galileo E1+E5a, BeiDou B1I+B2a, MYSTERY | 16083 | 00111110 11010011 |
| SatIQ - GPS L1+L5, QZSS L1+L5, GLONASS, Galileo E1+E5a, BeiDou B1I+B2a | 15827 | 00111101 11010011 |



### Determining the GPS mode

Simple test for all systems, with or without multi-band:

```
mode & 0xc3 == 0xc3
```

Simple test for all systems + multi-band:

```
mode & 0x1cc3 == 0x1cc3
```



### SatIQ - Auto Select

The Garmin description:

> Garmin SatIQ™ satellite technology is a GPS technology that determines the optimal GPS mode based on your environment. SatIQ can determine when Multiband GNSS is needed, like near tall buildings or in a dense forest, or when a low power GPS mode can achieve the same accuracy, like in more open areas. By choosing AutoSelect in the satellite setting on your device, SatIQ can automatically toggle between GPS modes in order to maximize battery life without compromising positional accuracy.

What this means is that there will be multiple GPS events throughout the course of the session, switching between different modes according to the conditions.
