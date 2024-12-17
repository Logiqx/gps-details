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

#### Garmin Activities

GPS L1, QZSS L1, GLONASS, Galileo E1, BeiDou B1I

| Satellites Setting  | Dec  | Bin               |
| ------------------- | ---- | ----------------- |
| All Systems         | 211  | 00000000 11010011 |
| SatIQ - Auto Select | 467  | 00000001 11010011 |

#### Connect IQ Apps

GPS L1, GLONASS, Galileo E1, BeiDou B1I

| App            | Dec  | Bin               |
| -------------- | ---- | ----------------- |
| APPro + Hoolan | 195  | 00000000 11000011 |



#### All + Multi-Band

#### Garmin Activities

GPS L1 + L5, QZSS L1 + L5, GLONASS, Galileo E1 + E5a, BeiDou B1I + B2a

| Satellites Setting  | Dec   | Bin               |
| ------------------- | ----- | ----------------- |
| All + Multi-Band    | 15571 | 00111100 11010011 |
| SatIQ - Auto Select | 15827 | 00111101 11010011 |

#### Connect IQ Apps

GPS L1 + L5, GLONASS, Galileo E1 + E5a, BeiDou B1I + B2a

| App                          | Dec  | Bin               |
| ---------------------------- | ---- | ----------------- |
| APPro + Hoolan + Windsurfing | 7363 | 00011100 11000011 |
