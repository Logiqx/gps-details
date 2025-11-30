## Broadcom GNSS Chipsets

Author: Michael George

Date created: 5 Nov 2025

Last updated: 18 Nov 2025



### Overview

The Broadcom [website](https://www.broadcom.com/products/wireless/gnss-gps-socs) currently lists three generations of dual-frequency GNSS chipsets:

- [BCM4778](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm4778) is Broadcom's third generation dual-frequency L1 + L5 GNSS receiver, announced in Sep 2021
- [BCM47765](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm47765) is part of the BCM4776 family supporting L1 + L5, announced in Jan 2020
- [BCM47755](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm47755) is part of the BCM4775 family supporting L1 + L5, announced in Sep 2017

The [BCM47531](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm47531) is also listed which is a fourth generation multi-constellation chipset, announced in Dec 2013.

In addition to the four chipsets currently shown on the Broadcom website, various other GNSS chipsets / families have been released over the years. Broadcom GNSS chipsets have been used by Apple, Samsung, Google, and Xiaomi as well as numerous budget watch brands.

Since mid-2020, Synaptics have also been producing chipsets such as the SYN4778, after [acquiring certain assets](https://www.globenewswire.com/news-release/2020/07/07/2058930/0/en/Synaptics-to-Acquire-Rights-to-Broadcom-s-Wireless-IoT-Connectivity-Business.html) from Broadcom. The SYN4778 (equivalent of the BCM4778) has since been identified in recent Garmin watches, starting with the fēnix 8.

This document will list Broadcom's various families of GNSS chipset in reverse-chronological order.



### Summary

Each GNSS chipset family has a separate page, accessible via clickable links.

#### Dual-Frequency

| Announced   | Family  | Chipset | Bands | Notes                           |
| ----------- | ------- | ------- | ------------------------------- | ----------- |
| Sep 2021 | [BCM4778](bcm-4778.md) | BCM4778 | L1 + L5 | Third generation dual-frequency GNSS receiver for mobile + wearables |
| Jan 2020  | [BCM4776](bcm-4776.md) | BCM47768 | L1 + L5 | Second generation dual-frequency GNSS receiver for wearable devices |
|             |         | BCM47765 | L1 + L5 | Second generation dual-frequency GNSS receiver |
| | | BCM47764 | L1 | GNSS receiver in the Apple Watch Series 7 |
| | | BCM47762 | L1 | Single-frequency GNSS receiver |
| Sep 2017 | [BCM4775](bcm-4775.md) | BCM47758 | L1 + L5 | First generation dual-frequency GNSS receiver for wearable devices |
|  |  | BCM47755 | L1 + L5 | First generation dual-frequency GNSS receiver |
|  |  | BCM47754 | L1 | GNSS receiver in the Apple Watch Series 5, Series 6, and SE |
|  |  | BCM47752 | L1 | Single-frequency chipset GNSS receiver |

Note: Some equivalent chipsets are also available from [Synaptics](https://www.synaptics.com/products/wireless#products) - e.g. SYN4778, SYN47768, and SYN47762.



#### Single-Frequency

| Announced   | Family  | Chipset | Notes                           |
| ----------- | ------- | ------- | ----------- |
| Sep 2015 | [BCM4774](bcm-4774.md) | BCM47748 | GNSS chip for Internet of Things and wearable devices<br />GPS, GLONASS, BeiDou, Galileo, QZSS |
| Sep 2014 |  | BCM4774 | Second-generation GNSS location hub<br />PS, GLONASS, BeiDou, Galileo, QZSS |
| ? | [BCM4773](bcm-4773.md) | BCM47734 | First-generation GNSS receiver in the Apple Watch Series 2<br />GPS, GLONASS, BeiDou, QZSS |
| Sep 2014 |  | BCM4773 | First-generation GNSS location hub<br />GPS, GLONASS, BeiDou, QZSS |
| Feb 2014 | [BCM4771](bcm-4771.md) | BCM4771 | First-generation GNSS receiver for fitness wearables<br />GPS, GLONASS, BeiDou, QZSS |
| Dec 2013 | [BCM4753](bcm-4753.md) | BCM47531 | Fourth-generation multi-constellation GNSS receiver<br />GPS, GLONASS, BeiDou, QZSS |
| ? | [BCM4752](bcm-4752.md) | BCM47522 | Third-generation multi-constellation GNSS receiver<br />GPS, GLONASS, QZSS |
| Feb 2013 |  | BCM47521 | Third-generation multi-constellation GNSS receiver<br />GPS, GLONASS, QZSS |
| Mar 2012 |  | BCM4752 | Third-generation multi-constellation GNSS receiver<br />GPS, GLONASS, QZSS |
| Feb 2011 | [BCM4751](bcm-4751.md) | BCM47511 | Second-generation multi-constellation GNSS receiver<br />GPS, GLONASS, QZSS |
| Oct 2010 |  | BCM4751 | Integrated monolithic GPS receiver<br />GPS, QZSS |
| Jan 2008 | [BCM4750](bcm-4750.md) | BCM4750 | Single-chip AGPS solution<br />GPS |



#### PND-on-a-chip

The [BCM4760](https://www.alldatasheet.com/datasheet-pdf/download/1756395/BOARDCOM/BCM4760.html) was announced on 6 Jan 2010 at [EDN](https://www.edn.com/broadcom-demonstrates-androidtm-and-windows-cer-running-on-advanced-navigation-processor/) and [Linux Devices](https://linuxdevices.org/pnd-on-a-chip-gets-android-support/), but should not be confused with the other GNSS receivers.

It was an entire Personal Navigation System-on-Chip solution, running an embedded Linux / Android / WinCE operating system.
