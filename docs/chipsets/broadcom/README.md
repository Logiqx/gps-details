## Broadcom GNSS Chipsets

Author: Michael George

Date: 5 Nov 2025



### Overview

The Broadcom [website](https://www.broadcom.com/products/wireless/gnss-gps-socs) currently lists three generations of dual-frequency GNSS chipsets:

- [BCM4778](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm4778) is Broadcom's third generation dual-frequency L1L5 GNSS receiver, announced Sep 2021
- [BCM47765](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm47765) is part of the BCM4776 family, announced Jan 2020
- [BCM47755](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm47755) is part of the BCM4775 family, announced Sep 2017
- plus the [BCM47531](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm47531) which is an old multi-constellation chipset, announced Dec 2013

In addition to the chipsets listed above, various other chipsets / families have been released over the years.

In recent years, Synaptics have also been producing Broadcom chipsets under their own name, such as the SYN4778.

This document will list Broadcom's various families of GNSS chipset in reverse-chronological order.



### Summary

#### Dual-Frequency

| Announced   | Family  | Chipset |                            | Notes                           |
| ----------- | ------- | ------- | ------------------------------- | ----------- |
| Sep 2021 | BCM4778 | [BCM4778](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm4778) \* | L1 + L5 | Third generation dual-frequency GNSS receiver |
| Jan 2020  | BCM4776X | BCM47768 \* | L1 + L5 | Second generation dual-frequency GNSS receiver |
|             |         | [BCM47765](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm47765) | L1 + L5 | Second generation dual-frequency GNSS receiver |
| | | BCM47764 | L1 | Single-frequency GNSS receiver of Apple Watch Series 7 |
| | | BCM47762 \* | L1 | Single-frequency GNSS receiver |
| Sep 2017 | [BCM4775X](https://docs.broadcom.com/docs/12379501) | BCM47758 | L1 + L5 | Single-frequency GNSS receiver, tailored for wearable devices |
|  |  | [BCM47755](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm47755) | L1 + L5 | First generation dual-frequency GNSS receiver |
|  |  | BCM47754 | L1 | Single-frequency GNSS receiver of Apple Watch Series 6 |
|  |  | BCM47752 | L1 | Single-frequency chipset GNSS receiver |

\* Some Broadcom chipsets are also available from [Synaptics](https://www.synaptics.com/products/wireless#products) - e.g. SYN4778, SYN47768, and SYN47762.



#### Single-Frequency

| Announced   | Family  | Chipset |                            | Notes                           |
| ----------- | ------- | ------- | ------------------------------- | ----------- |
| 2 Dec 2014 | BCM4774 | BCM4774 | L1 | GPS, GLONASS, BeiDou, Galileo, QZSS, SBAS |
| Sep 2014 | BCM4773 | BCM47734 | L1 | GPS, GLONASS, BeiDou, QZSS, SBAS |
|  |  | BCM4773 | L1 | GPS, GLONASS, BeiDou, QZSS, SBAS |
| Feb 2014 | BCM4771 | BCM4771 | L1 | GPS, GLONASS, BeiDou, QZSS, SBAS |
| Dec 2013 | BCM47531 | [BCM47531](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm47531) | L1 | Fourth-generation multi-constellation GNSS receiver<br />GPS, GLONASS, BeiDou, QZSS, SBAS |
| Mar 2012 | BCM4752 | BCM4752 | L1 | Third-generation multi-constellation GNSS receiver<br />GPS, GLONASS, QZSS, SBAS |
| Oct 2010 | BCM4751 | BCM47511 | L1 | GPS, GLONASS, QZSS, SBAS |
|  |  | BCM4751 | L1 | GPS, QZSS, SBAS |
| Jan 2008 | BCM4750 | BCM4750 | L1 | GPS |



### BCM4778 - Sep 2021

The BCM4778 was announced on 22 Sep 2021 in Broadcom's [product news](https://www.broadcom.com/company/news/product-releases/58626) and [GPSWorld](https://www.gpsworld.com/broadcom-launches-its-lowest-power-gnss-receiver-for-mobile-wearables/). It is the third generation dual-frequency GNSS receiver from Broadcom, measuring just 2.4 mm x 2.7 mm x 0.65 mm.

The BCM4778 is listed amongst the mass-market premium family of GNSS receivers in the [GNSS and Secure SATCOM User Technology Report](https://www.euspa.europa.eu/sites/default/files/documents/GNSS_Secure_SATCOM_User_Tech_Report.pdf) 2025 / issue 1, published by [EUSPA](https://www.euspa.europa.eu/). See page 39.

The BCM4778 is still listed as active in the list of GNSS/GPS SoCs on the Broadcom [website](https://www.broadcom.com/products/wireless/gnss-gps-socs). Further information can be found on the [product page](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm4778) and in the [product brief](https://docs.broadcom.com/docs/4778-PB1) (PDF).

Synaptics also produce the BCM4778 chipset, but it is marketed as the [SYN4778](https://www.synaptics.com/products/wireless/syn4778-multi-band-gnss). The Synaptics chipset is used in the Garmin fenix 8, clearly shown in the [teardown](https://www.f-blog.info/garmin-fenix-8-review-but-only-the-internals/) by F Tipi in April 2025.



### BCM4776 - Jan 2020

The BCM4776 was announced on 8 Jan 2020 in [GPSWorld](https://www.gpsworld.com/broadcoms-second-generation-dual-frequency-gnss-uses-l5-signals/). It is the second generation dual-frequency GNSS receiver from Broadcom.

The BCM4776 is also described in the [GNSS User Technology Report](https://prod5.assets-cdn.io/event/6041/assets/8361034923-231960e68d.pdf) 2020 / issue 3, published by [EUSPA](https://www.euspa.europa.eu/). See page 34.

There are 4 different chipsets in the BCM4776X family - BCM47768 + BCM47765 (dual-frequency) and BCM47764 + BCM47762 (single-frequency).

The [GPSTest Database](https://barbeau.medium.com/implementing-the-gpstest-database-a-serverless-architecture-c61a2084965) shows the BCM4776 in various Android phones:

- Google Pixel 8, Pixel 8 Pro
- Google Pixel 7, Pixel 7 Pro, Pixel 7a
- Google Pixel 6, Pixel 6 Pro, Pixel 6a
- Pixel Fold

#### BCM47768

The BCM47768 is a second generation dual-frequency GNSS chipset supporting L1 + L5. It is used in the Quectel LC29D(E) + LC29D(F) modules, detailed in the IoT&M2M Modules [product brochure](https://market.quectel.com/wp-content/uploads/custom/pdf/Quectel_Product_Brochure_CN_V6.7.pdf) v6.7, and shows a 10 Hz update rate.

The Xiaomi Watch S1 uses the BCM47768, clearly shown in a Chinese [teardown](https://www.chongdiantou.com/archives/140114.html).

Synaptics currently produce and sell the BCM47768, but it is called the [SYN47768](https://www.synaptics.com/products/wireless#products).

#### BCM47765

The [BCM47765](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm47765) is a second generation dual-frequency GNSS chipset supporting L1 + L5, still showing on the Broadcom [website](https://www.broadcom.com/products/wireless/gnss-gps-socs) as "Active". It is used in the Quectel LC29D(B) module, detailed in [specification](https://www.mouser.com/datasheet/2/1052/Quectel_LC29D_GNSS_Specification_V1_2-3009875.pdf) and [product overview](https://sisoog.com/wp-content/uploads/2021/03/Quectel_GNSS_Module_Product_Overview_V3.2-1.pdf) documents, which shows a 10 Hz update rate.

The BCM47765 appears in several Google Pixel products, including:

- [Google Pixel 8 and 8 Pro](https://www.reddit.com/r/GooglePixel/comments/1b57att/can_anyone_who_has_pixel_8_or_pixel_8_pro_do_a/) released Oct 2023
- [Google Pixel Watch](https://www.phonearena.com/news/report-reveals-bill-of-materials-cost-pixel-watch_id145978) released in Oct 2022
- [Google Pixel 6](https://www.techinsights.com/blog/teardown/google-pixel-6-pro-teardown) released Oct 2021

Synaptics may produce and sell the BCM47765, but calling it the [SYN47765](https://www.edomtech.com/en/product-detail/synaptics-gps-gnss-solutions/).

#### BCM47764

The BCM47764 is a single-frequency GNSS chipset supporting GPS, GLONASS, BeiDou, Galileo, and QZSS.

It is used in the Apple Watch Series 7 and mentioned in a device analysis on [iPhoneWired](https://iphonewired.com/news/268068/).

The BCM47764KUBG can be found on parts websites, such as [italian.integrated-ic.com](https://italian.integrated-ic.com/sale-36831695-iphone-ic-chip-bcm47764kubg-gnss-receiver-bga-package-apple-watch-7-ic-chip.html).

Aside from this it is rarely mentioned in Google results, possibly being specific to Apple watches?

#### BCM47762

The BCM47762 is a single-frequency GNSS chipset supporting GPS, GLONASS, BeiDou, Galileo, and QZSS.

Several watches use the BCM47762, including:

- [Kuzo Pro Sports Watch](https://www.sportpursuit.com/catalog/product/view/id/4629700/)
- [Amazfit Active/Pink/Sport Band/Petal Pink](https://gear-up.me/amazfit-active-pink-sport-band-petal-pink.html) released in Feb 2024
- [AGM watch legion](https://www.ebay.com/itm/316250572709) released in Feb 2025

Synaptics currently produce and sell the BCM47762, but it is called the [SYN47762](https://www.synaptics.com/products/wireless#products).

#### 

### BCM4775 - Sep 2017

The [BCM4775](https://docs.broadcom.com/docs/12379501) was announced on 21 Sep 2017 in [GPSWorld](https://www.gpsworld.com/broadcom-launches-dual-frequency-gnss-receiver-for-mass-market/). It is the first generation dual-frequency GNSS receiver from Broadcom.

There are 4 different chipsets in the BCM4775X family - BCM47758 + BCM47755 (dual-frequency) and BCM47754 + BCM47752 (single-frequency).

The BCM47752 and BCM47755 are both mentioned in the article [Dual-frequency GNSS on Android devices](https://barbeau.medium.com/dual-frequency-gnss-on-android-devices-152b8826e1c) by Sean Barbeau in Apr 2018.

The [GPSTest Database](https://barbeau.medium.com/implementing-the-gpstest-database-a-serverless-architecture-c61a2084965) shows the BCM4775 in various Android phones:

- Samsung Galaxy XCover FieldPro
- Samsung Galaxy S9, Galaxy S9+
- Samsung Galaxy S10e, Galaxy S10, Galaxy S10+, Galaxy S10 5G
- Samsung Galaxy S20, Galaxy S20 FE, Galaxy S20 5G, Galaxy S20+, Galaxy S20+ 5G, Galaxy S20 Ultra 5G
- Samsung Galaxy S21 5G, Galaxy S21 FE 5G, Galaxy S21+ 5G, Galaxy S21 Ultra 5G
- Samsung Galaxy M62
- Samsung Galaxy Note9
- Samsung Galaxy Note10, Galaxy Note10 Lite, Galaxy Note10+, Galaxy Note10+ 5G
- Samsung Galaxy Note20, Galaxy Note20 5G, Galaxy Note20 Ultra, Galaxy Note20 Ultra 5G
- Samsung Galaxy Tab Active3
- Xiaomi Mi 8, Mi 8 Pro, Mi MIX 3

#### BCM47758

The BCM47758 is a first generation dual-frequency GNSS chipset supporting L1 + L5. It is used in the Quectel LC29D(A) module, detailed in the [announcement](https://www.quectel.com/news-and-pr/quectel-and-broadcom-launch-dual-band-emobility-gnss-module/) and [specification](https://www.mouser.com/datasheet/2/1052/Quectel_LC29D_GNSS_Specification_V1_2-3009875.pdf) document, which shows a 1 Hz update rate. It is tailored for wearable devices according to the [product brief](https://docs.broadcom.com/doc/12379501).

It is used in various Samsung products, including:

- Samsung Galaxy Watch (Aug 2018) and Galaxy Watch Active (Mar 2019) as shown in a teardown on [iFixit.com](https://www.ifixit.com/Teardown/Samsung+Galaxy+Watch+Teardown/117519).

Synaptics may produce and sell the BCM47758, but calling it the [SYN47758](https://www.edomtech.com/en/product-detail/synaptics-gps-gnss-solutions/).

#### BCM47755

The [BCM47755](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm47755) is a first generation dual-frequency GNSS chipset supporting L1 + L5, now showing on the Broadcom [website](https://www.broadcom.com/products/wireless/gnss-gps-socs) as "Not Recommended for New Design". The conference paper [Android GNSS Measurements Inside the BCM47755](https://www.researchgate.net/publication/329581011_Android_GNSS_Measurements_-_Inside_the_BCM47755) (Broadcom, 2018) studies the performance in Android.

The BCM47755 is used in the Quectel LC29D(C) module, detailed in the [specification](https://www.mouser.com/datasheet/2/1052/Quectel_LC29D_GNSS_Specification_V1_2-3009875.pdf) document has a 1 Hz update rate. It can also be found in the Quectel LC79D, detailed in a [product overview](https://sisoog.com/wp-content/uploads/2021/03/Quectel_GNSS_Module_Product_Overview_V3.2-1.pdf) and [product brochure](https://market.quectel.com/wp-content/uploads/custom/pdf/Quectel_Product_Brochure_CN_V6.7.pdf).

The BCM47755 appears in several Android phones and watches, including:

- [Google Pixel 4](https://pubmed.ncbi.nlm.nih.gov/34960412/)
- [Samsung Galaxy S20 (Exynos)](https://pubmed.ncbi.nlm.nih.gov/34960412/)
- Samsung Galaxy S21 (Exynos)
- [Samsung Galaxy Note 10](https://barbeau.medium.com/dual-frequency-gnss-on-android-devices-152b8826e1c)
- [Samsung Galaxy Watch3](https://www.ifixit.com/Teardown/Samsung+Galaxy+Watch3+Teardown/135891)
- [Xiaomi Mi 8](https://barbeau.medium.com/dual-frequency-gnss-on-android-devices-152b8826e1c)

Synaptics may produce and sell the BCM47755, but it calling it the [SYN47755](https://www.edomtech.com/en/product-detail/synaptics-gps-gnss-solutions/).

#### BCM47754

The BCM47754 is a single-frequency GNSS chipset supporting GPS, GLONASS, BeiDou, Galileo, and QZSS.

It is used in the Apple Watch Series 6 and mentioned in a teardown on [reverse-costing.com](https://www.reverse-costing.com/teardown-notes/apple-watch-series-6-evolution/).

Aside from this it is rarely mentioned in Google results, possibly being specific to Apple watches?

#### BCM47752

The BCM47752 is a single-frequency GNSS chipset supporting GPS, GLONASS, BeiDou, Galileo, and QZSS.

Several Samsung phones use the BCM47752, including:

- [Samsung Galaxy S9 (Exynos)](https://www.techinsights.com/blog/samsung-galaxy-s9-teardown)
- [Samsung Galaxy S10 (Exynos)](https://www.techinsights.com/blog/samsung-galaxy-s10-teardown)
- [Samsung Galaxy Note 9](https://barbeau.medium.com/dual-frequency-gnss-on-android-devices-152b8826e1c)

Synaptics may produce and sell the BCM47752, but it calling it the [SYN47752](https://www.edomtech.com/en/product-detail/synaptics-gps-gnss-solutions/).
