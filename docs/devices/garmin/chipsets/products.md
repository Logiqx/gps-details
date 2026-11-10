## Garmin - GNSS Product Numbers

Author: Michael George

Created: 7 Jun 2025

Updated: 10 Nov 2026



### Introduction

The FIT files from Garmin watches / products often contain a product number for the GNSS chipset. The GNSS product number can be found in the device_info record with a device_type of 0 (GPS).

This document summarises the GNSS product numbers and where they have been observed in FIT files. Unfortunately, newer watches from Garmin have stopped distinguishing between the chipsets and simply user the product number of the watch (e.g. fenix 8 and newer).

An extensive list of Garmin watches and their GNSS chipsets can be found on another page, using this [link](../watches/README.md).



#### MediaTek

Several product numbers have been observed for the MediaTek MT3333.

It's worth noting that some watch models have been seen with differing GNSS product numbers. e.g. Forerunner 920XT with 1620 and 2957.

It is unclear whether these are slightly different versions of the MT3333, updated Garmin GPS software, or firmware updates from MediaTek.

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

There are three distinct product numbers for the Airoha GNSS chipsets; 3865 (AG3335M, multi-band), 3866 (AG3335MN, single-band), and 4548 (AG3352, single-band).

One anomaly has been spotted where the fenix 7 Sapphire lists the GNSS product number as 3866 (AG3335MN), despite being multi-band. This is likely because there is a single product number of 3906 for the fenix 7 series, so the system software may not distinguish between the various models.

The Instinct 3 and Instinct E refer to the AG3335M and AG3335MN respectively. They also exhibit the same artefacts in gps_metadata as other Airoha-based Garmin watches. These observations are software-related, but strongly suggest the Instinct 3 and Instinct E are using Airoha chipsets.

| Product | Chipset  | Observed                                                     |
| ------- | -------- | ------------------------------------------------------------ |
| 3865    | AG3335M  | Edge 840<br />Edge 1050<br />epix Pro (Gen 2)<br />fēnix 7 Pro<br />Forerunner 255<br />Forerunner 265<br />Forerunner 955<br />Forerunner 965<br />Instinct 2X<br />Instinct 3 |
| 3866    | AG3335MN | epix (Gen 2)<br />fēnix 7<br />fēnix E<br />Forerunner 165<br />Instinct E<br />Descent G2<br />Venu Sq 2<br />Venu 3S<br />vívoactive 5 |
| 4548    | AG3352   | Bounce 2<br />Forerunner 170<br />vívoactive 6               |

Several teardowns show the AG3335M:

- [MARQ Gen 2 Carbon](https://fccid.io/IPH-A4263/) - FCC
- [Forerunner 965](https://www.techinsights.com/blog/deep-dive-teardown-garmin-forerunner-965-a04578-smartwatch?utm_source=direct&utm_medium=website) - Tech Insights

Several teardowns show the AG3335MN:

- [fēnix 7X Solar](http://www.f-blog.info/garmin-fenix-7x-solar-teardown-non-destructive/) - F Tipi Blog
- [fēnix 7S Solar](https://www.youtube.com/watch?v=vb8yyu8En1o&t=485s) - The Electronics Inside on YouTube
- [Instinct Crossover](https://fccid.io/IPH-04348) - FCC
- [Venu Sq2](https://fccid.io/IPH-A4390) - FCC
- [Venu Sq2 Music](https://fccid.io/IPH-04390) - FCC

Several teardowns show the AG3352:

- [Bounce 2](https://fccid.io/IPH-05001)- FCC
- [Forerunner 170](https://fccid.io/IPH-05206/) - FCC - blurry Airoha logo
- [vívoactive 6](https://fccid.io/IPH-04951) - FCC



#### Synaptics

Early system software for the fēnix 8 recorded the GNSS product number as 0.

​	e.g. system software = 12.35, GPS software = 2.11, GNSS product = 0.

Subsequent software has recorded a GNSS product number which is identical to the fēnix 8 product number.

​	e.g. system software = 13.37, GPS software = 2.17, GNSS product = 4536.

Likewise the Forerunner 970 also records its product number (4565) as the GNSS product number.

| Product | Chipset | Observed                  |
| ------- | ------- | ------------------------- |
| 4536    | SYN4778 | fēnix 8                   |
| 4565    | SYN4778 | Forerunner 970            |
| 4678    | SYN4778 | Instinct Crossover AMOLED |

Several teardowns show the SYN4778:

- [fēnix 8 - 51 mm, Solar Sapphire](http://www.f-blog.info/garmin-fenix-8-review-but-only-the-internals/) - F Tipi Blog
- [Forerunner 570](https://fccid.io/IPH-04911) - FCC - blurry
- [Instinct Crossover AMOLED](https://fccid.io/IPH-05049) - FCC
- [Quatix 8 Pro](https://fccid.io/IPH-04809) - FCC - blurry
- [Venu 4](https://fccid.io/IPH-04916) - FCC - blurry

Several FCC teardowns show the SYN47762:

- [Enduro 3 - single band](https://fccid.io/IPH-04861) - definitely says 47762
- [Enduro XT](https://fccid.io/IPH-04413) - blurry but it is the same chip
- [fēnix 8 Pro 47 mm](https://fccid.io/IPH-04807) - blurry but it is the same chip
- [fēnix 8 - 43 mm](https://fccid.io/IPH-04805) - blurry but it is the same chip



### Summary

GNSS product numbers have been quite useful when trying to distinguish between MediaTek, Sony and Airoha chipsets.

Sadly this may be coming to an end with the fēnix 8 and Forerunner 970, which do not use generic GNSS product numbers.

The Instinct 3 and Instinct E both record product numbers suggesting the Airoha chipsets, but the vívoactive 6 is yet TBC.
