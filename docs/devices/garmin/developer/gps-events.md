## Garmin Developer Tips - GPS Events

### Overview

FIT files from newer Garmin devices contain records for the GPS Events.

Event type 49 indicates a mode change and the mode itself is a 16-bit value.



### Bitmasks

It is possible to determine what the various bits represent based on various test files.

Least significant byte:

```
GPS L1
00000001

QZSS L1
00010000

GLONASS, Galileo E1, BeiDou B1I
11000010
```

Most significant byte:

```
QZSS L5
00100000

GPS L5, Galileo E5a, BeiDou B2a
00011100

SatIQ - Auto Select
00000001
```

n.b. Garmin activities always have an additional bit set when compared to Connect IQ apps, which is presumed to be QZSS.



### GPS Only

#### Garmin Activities

GPS L1, QZSS L1

| Satellites Setting  | Dec  | Bin               |
| ------------------- | ---- | ----------------- |
| GPS Only            | 17   | 00000000 00010001 |
| SatIQ - Auto Select | 273  | 00000001 00010001 |



### All Systems

#### Connect IQ Apps

GPS L1, GLONASS, Galileo E1, BeiDou B1I

| App            | Dec  | Bin               |
| -------------- | ---- | ----------------- |
| APPro + Hoolan | 195  | 00000000 11000011 |

#### Garmin Activities

GPS L1, QZSS L1, GLONASS, Galileo E1, BeiDou B1I

| Satellites Setting  | Dec  | Bin               |
| ------------------- | ---- | ----------------- |
| All Systems         | 211  | 00000000 11010011 |
| SatIQ - Auto Select | 467  | 00000001 11010011 |



#### All + Multi-Band

#### Connect IQ Apps

GPS L1 + L5, GLONASS, Galileo E1 + E5a, BeiDou B1I + B2a

| App                          | Dec  | Bin               |
| ---------------------------- | ---- | ----------------- |
| APPro + Hoolan + Windsurfing | 7363 | 00011100 11000011 |

#### Garmin Activities

GPS L1 + L5, QZSS L1 + L5, GLONASS, Galileo E1 + E5a, BeiDou B1I + B2a

| Satellites Setting  | Dec   | Bin               |
| ------------------- | ----- | ----------------- |
| All + Multi-Band    | 15571 | 00111100 11010011 |
| SatIQ - Auto Select | 15827 | 00111101 11010011 |



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
