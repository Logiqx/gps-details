## Garmin - GNSS Product Numbers

Author: Michael George

Created: 7 Jun 2025



### Introduction

The FIT files from Garmin watches / products often contain a product number for the GNSS chipset.

The GNSS product number can be found in the device_info record with a device_type of 0 (GPS).

This document summarises the GNSS product numbers and where they have been observed in FIT files.

An extensive list of Garmin watches and their chipsets can be found on another page, using this [link](../watches/README.md).



#### MediaTek

Several product numbers have been observed for the MediaTek MT3333.

It's worth noting that some watch models have been seen with differing GNSS product numbers. e.g. Forerunner 920XT with 1620 and 2957.

It is unclear whether these are slightly different versions of the MT3333, or relate to firmware updates from MediaTek.

| Product | Chipset | Observed                                                     |
| ------- | ------- | ------------------------------------------------------------ |
| 1619    | MT3333  | Edge 520                                                     |
| 1620    | MT3333  | fēnix 3<br />fēnix 3 HR<br />Forerunner 920XT                |
| 1621    | MT3333  | Forerunner 935<br />Forerunner 645M                          |
| 2957    | MT3333  | Edge 520 Plus<br />Edge 820<br />Edge 1030<br />fēnix 5<br />fēnix 5 Plus<br />fēnix 5S Plus<br />Forerunner 920XT<br />vívoactive 3 |
| 3411    | MT3333  | Forerunner 735XT                                             |
| 3750    | MT3333  | fēnix 5X<br />fēnix 5 Plus<br />Instinct Esports             |

Multiple teardowns confirm the MT3333 being used in a variety of Garmin watches from this particular era:

- [fēnix 3](http://www.f-blog.info/diving-inside-garmin-fenix-3-tear-down-etc/) - F Tipi Blog
- [fēnix 3 HR](https://medium.com/personal-notes-on-the-garmin-f%C4%93nix-3-hr/f%C4%93nix-3-hr-a-non-destructive-teardown-bcfb45f1b746) - Red Turtle on Medium
- [fēnix 5X](http://www.f-blog.info/garmin-fenix-5x-inner-parts-teardown-disassembly-assembly-etc-no-disassemble/) - F Tipi Blog
- [fēnix 5 Plus](https://www.edn.com/teardown-a-smartwatch-with-an-athletic-tradition/) - EDN
- [Forerunner 220](https://www.microcontrollertips.com/teardown-garmin-forerunner-220-sport-watch-heart-monitor/) - Microcontroller Tips
- [Forerunner 230](https://embeddedcomputing.com/27555-tear-down-garmin-forerunner-230-gps-running-watch/) - Embedded Computing Design
- [Forerunner 630](https://www.youtube.com/watch?v=WdbPKmjUrKc&t=114s) - Tech T on YouTube
- [Forerunner 735XT](https://www.ifixit.com/Teardown/Garmin+Forerunner+735XT+Teardown/117852) - iFixit
- [vívoactive 3](https://www.ifixit.com/Guide/Garmin+Vivoactive+3+Battery+Replacement/150696) - iFixit



#### Sony

Several product numbers are observed for the Sony GNSS chipsets.

It's worth noting that some watch models have been seen with differing GNSS product numbers. e.g. Forerunner 945 with 3107 and 4197.

3107 probably represents the CXD5603GF, but others may represent chipsets such as the CXD5605GF, or relate to firmware updates from Sony. 

| Product | Chipset   | Observed                                                     |
| ------- | --------- | ------------------------------------------------------------ |
| 3107    | CXD5603GF | Edge 530<br />Enduro<br />fēnix 6<br />fēnix 6 Pro<br />Instinct Solar<br />Forerunner 945<br />Swim 2 |
| 3799    | CXD56xxxx | Edge Explore 2<br />Instinct 2<br />Forerunner 745           |
| 4058    | CXD56xxxx | Forerunner 55                                                |
| 4197    | CXD56xxxx | Edge 530<br />Edge 830<br />Forerunner 245<br />Forerunner 945<br />fēnix 6X<br />vívoactive 4 |

Teardowns:

- [fēnix 6X Pro](http://www.f-blog.info/garmin-fenix-6x-pro-disassembly-or-teardown-whatever-you-say/) - F Tipi Blog
- [Forerunner 245 Music](https://www.ifixit.com/Teardown/Garmin+Forerunner+245+Music+Teardown/150396) - iFixit
- [Forerunner 945](https://embeddedcomputing.com/application/consumer/smartphones-and-wearables/smartwatch-boasts-two-weeks-on-a-charge) - Embedded Computing
- [vívoactive 4](https://www.ifixit.com/Guide/Garmin+V%C3%ADvoactive+4+Motherboard+Replacement/167460) - iFixit

Information:

- [fēnix 6 GPS versions](https://forums.garmin.com/outdoor-recreation/outdoor-recreation/f/fenix-6-series/328245/gps-versions/1607877#1607877) - socorsu in Garmin forum, 24 Apr 2023
- [GPS / GNSS Receiver](https://web.archive.org/web/20220702201822/https://www.sony-semicon.co.jp/e/products/lsi/gps/product.html) - Sony, 2 Jul 2022
- [More accurate SONY GNSS/GPS chip for Garmin sports wearables](https://the5krunner.com/2020/09/17/more-accurate-sony-gnss-gps-chip-for-sports-wearables/) - the5krunner, 17 Sep 2020



#### Airoha

There are two distinct product numbers for the Airoha GNSS chipsets; 3865 (AG3335M, multi-band) and 3866 (AG3335MN, single-band).

One anomaly has been spotted where the fenix 7 Sapphire lists the GNSS product number as 3866 (AG3335MN), despite being multi-band. This is likely because there is a single product number of 3906 for the fenix 7 series, so the system software may not distinguish between the various models.

The Instinct 3 and Instinct E refer to the AG3335M and AG3335MN respectively. They also exhibit the same artefacts in gps_metadata as other Airoha-based Garmin watches. These observations are software-related, but strongly suggest the Instinct 3 and Instinct E are using Airoha chipsets.

| Product | Chipset  | Observed                                                     |
| ------- | -------- | ------------------------------------------------------------ |
| 3865    | AG3335M  | Edge 840<br />Edge 1050<br />epix Pro (Gen 2)<br />fēnix 7 Pro<br />Forerunner 255<br />Forerunner 265<br />Forerunner 955<br />Forerunner 965<br />Instinct 2X<br />Instinct 3 |
| 3866    | AG3335MN | epix (Gen 2)<br />fēnix 7<br />fēnix E<br />Forerunner 165<br />Instinct E<br />Descent G2<br />Venu Sq 2<br />Venu 3S<br />vívoactive 5 |

Several teardowns (including the FCC) show the AG3335M and AG3335MN:

- [fēnix 7X Solar](http://www.f-blog.info/garmin-fenix-7x-solar-teardown-non-destructive/) - AG3335MN - F Tipi Blog
- [fēnix 7S Solar](https://www.youtube.com/watch?v=vb8yyu8En1o&t=485s) - AG3335MN - The Electronics Inside on YouTube
- [MARQ Gen 2 Carbon](https://fccid.io/IPH-A4263/Internal-Photos/Internal-Photos-6835362) - AG3335M - FCC
- [Forerunner 965](https://www.techinsights.com/blog/deep-dive-teardown-garmin-forerunner-965-a04578-smartwatch?utm_source=direct&utm_medium=website) - AG3335M - Tech Insights
- [Instinct 2 Crossover](https://fccid.io/IPH-04348/Internal-Photos/Internal-Photos-6150278) - AG3335M - FCC
- [Venu Sq2](https://fccid.io/IPH-A4390/Internal-Photos/Internal-Photos-5919154) - AG3335MN - FCC
- [Venu Sq2 Music](https://fccid.io/IPH-04390/Internal-Photos/Internal-Photos-5930782) - AG3335MN - FCC



#### Synaptics

Early system software for the fēnix 8 recorded the GNSS product number as 0.

​	e.g. system software = 12.35, GPS software = 2.11, GNSS product = 0.

Subsequent software has recorded a GNSS product number which is identical to the fēnix 8 product number.

​	e.g. system software = 13.37, GPS software = 2.17, GNSS product = 4536.

Likewise the Forerunner 970 also records its product number (4565) as the GNSS product number.

| Product | Chipset    | Observed       |
| ------- | ---------- | -------------- |
| 4536    | SYN4778    | fēnix 8        |
| 4565    | SYN4778 \* | Forerunner 970 |

\* Further testing is pending to look for any Airoha-related artefacts in the gps_metadata of the Forerunner 970.

The F Tipi Blog identified the Synaptics GNSS chipset in the fēnix 8:

- [fēnix 8 Solar 51 mm](http://www.f-blog.info/garmin-fenix-8-review-but-only-the-internals/) - F Tipi Blog



#### TBC

The following product numbers have been observed in recent watches, but the GNSS chipset is yet to be confirmed.

A single-band (L1) GNSS chipset could be Synaptics (e.g. [SYN47762](https://www.synaptics.com/products/wireless)) or Airoha (e.g. AG3335MN or [AG3352](https://www.airoha.com/products/p/zy4r082hgNywp1bg)).

Articles on [Garmin Rumours](https://garminrumors.com/models/vivoactive-6/) and [Runners World](https://www.runnersworld.com/uk/gear/tech/a64352245/garmin-vivoactive-6/) say it uses the same GNSS chipset as the vívoactive 5, which is the AG3335MN.

| Product | Chipset | Observed     |
| ------- | ------- | ------------ |
| 4548    | ?       | vívoactive 6 |
| ?       | ?       | Venu X2      |



### Summary

GNSS product numbers have been quite useful when trying to distinguish between MediaTek, Sony and Airoha chipsets.

Sadly this may be coming to an end with the fēnix 8 and Forerunner 970, which do not use generic GNSS product numbers.

The Instinct 3 and Instinct E both record product numbers suggesting the Airoha chipsets, but the vívoactive 6 is yet TBC.
