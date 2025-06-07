## Garmin - GNSS Product Numbers

Author: Michael George

Created: 7 Jun 2025



### Introduction

The FIT files from Garmin watches / products often contain a product number for the GNSS chipset.

The GNSS product number can be found in the device_info record with a device_type of 0 (GPS).

This document has been summarises the GNSS product numbers and where they have been observed.



#### Mediatek

Several product numbers have been used for the Mediatek MT3333.

It isn't clear whether these are slightly different versions of the MT3333, or relate to firmware updates from Mediatek.

Multiple teardowns confirm the MT3333 being used in a variety of Garmin watches from this era.

| Product | Chipset | Observed                                                     |
| ------- | ------- | ------------------------------------------------------------ |
| 1620    | MT3333  | fēnix 3                                                      |
| 1621    | MT3333  | Forerunner 935<br />Forerunner 645M                          |
| 2957    | MT3333  | fēnix 5<br />fēnix 5S Plus<br />Forerunner 920XT<br />vívoactive 3 |
| 3750    | MT3333  | fēnix 5X<br />fēnix 5 Plus                                   |



#### Sony

Several product numbers are used for the Sony GNSS chipsets.

At least one of the numbers represents the CXD5603GF, but others may represent chipsets such as the CXD5605GF, or relate to firmware updates from Sony. 

It's worth noting that some watch models have been seen with differing GNSS product numbers. e.g. Forerunner 945 with 3107 or 4197.

| Product | Chipset   | Observed                                                     |
| ------- | --------- | ------------------------------------------------------------ |
| 3107    | CXD56xxxx | Edge 530<br />Enduro<br />fēnix 6<br />fēnix 6 Pro<br />Forerunner 945 |
| 3799    | CXD56xxxx | Instinct 2<br />Forerunner 745                               |
| 4058    | CXD56xxxx | Forerunner 55                                                |
| 4197    | CXD56xxxx | Forerunner 245<br />Forerunner 945<br />fēnix 6X<br />vívoactive 4 |

Links:

- [fēnix 6 GPS versions](https://forums.garmin.com/outdoor-recreation/outdoor-recreation/f/fenix-6-series/328245/gps-versions/1607877#1607877) - socorsu in Garmin forum, 24 Apr 2023
- [GPS / GNSS Receiver](https://web.archive.org/web/20220702201822/https://www.sony-semicon.co.jp/e/products/lsi/gps/product.html) - Sony, 2 Jul 2022
- [More accurate SONY GNSS/GPS chip for Garmin sports wearables](https://the5krunner.com/2020/09/17/more-accurate-sony-gnss-gps-chip-for-sports-wearables/) - the5krunner, 17 Sep 2020



#### Airoha

There are two distinct product numbers for the Airoha GNSS chipsets; 3865 (AG3335M, multi-band) and 3866 (AG3335MN, single-band).

There is one anomaly where the fenix 7 Sapphire lists the GNSS product number as 3866 (AG3335MN), despite being multi-band. This is likely because there is a single product number of 3906 for the fenix 7 series, so the system software may not distinguish between the various models.

The Instinct 3 and Instinct E refer to the AG3335M and AG3335MN respectively. They also exhibit the same artefacts in gps_metadata as other Airoha-based Garmin watches. These observations are software-related, but strongly suggest the Instinct 3 and Instinct E use Airoha chipsets.

| Product | Chipset  | Examples                                                     |
| ------- | -------- | ------------------------------------------------------------ |
| 3865    | AG3335M  | epix Pro (Gen 2)<br />fēnix 7 Pro<br />Forerunner 255<br />Forerunner 265<br />Forerunner 955<br />Forerunner 965<br />Instinct 2X<br />Instinct 3 |
| 3866    | AG3335MN | epix (Gen 2)<br />fēnix 7<br />Forerunner 165<br />Instinct E<br />Venu Sq 2<br />Venu 3S<br />vívoactive 5 |



#### Synaptics

Early system software for the fēnix 8 recorded the GNSS product number as 0.

​	e.g. system software = 12.35, GPS software = 2.11, GNSS product = 0.

Subsequent software also records the fēnix 8 product number as the GNSS product number.

​	e.g. system software = 13.37, GPS software = 2.17, GNSS product = 4536.

Likewise the Forerunner 970 also records its product number (4565) as the GNSS product number.

| Product | Chipset    | Examples       |
| ------- | ---------- | -------------- |
| 4536    | SYN4778    | fēnix 8        |
| 4565    | SYN4778 \* | Forerunner 970 |

\* Further testing is pending to look for Airoha-related artefacts in gps_metadata.



### Summary

GNSS product numbers have been quite useful when trying to distinguish between Mediatek, Sony and Airoha chipsets.

Sadly this may be coming to an end with the fēnix 8 and Forerunner 970, which do not use generic GNSS product numbers.

The Instinct 3 and Instinct E both appear to use Airoha chipsets, and this may also apply to the vívoactive 6 (TBC).
