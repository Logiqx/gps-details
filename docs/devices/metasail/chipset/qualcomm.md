## Qualcom MDM9215 

Author: Michael George

Created: 1 August 2024



### Background

Qualcomm appears to release MDM92x5 and MDM96x5 chips at the same time:

- MDM9215 (UMTS/GSM + LTE) and MDM9615 (CDMA + UMTS/GSM + LTE) in 2012
- MDM9625 and MDM9625 in 2013, referred to as MDM9x25

The MDM 9215 is a digital [baseband processor](https://en.wikipedia.org/wiki/Baseband_processor).

According to a [press release](https://m2msupport.net/m2msupport/tag/mdm9215/) it was released at the same time as the MDM9615, which was used in the [iPhone 5](https://medium.com/@ilyakorogodin/where-is-a-navigation-chip-in-my-iphone-92ab55a61863):

> Qualcomm launches 4G embedded reference platform on MDM9615 and MDM9215 chipsets
>
> Posted on February 22, 2012
>
> Qualcomm announced the availability for next generation embedded reference design platform based on MDM9615 and MDM9215 chipsets. This platform will be used in next gen 4G LTE modules to enable LTE connectivity in laptops, netbooks, tablets and other M2M applications. Like the previous generations of Gobi modules, 9×15-based modules can support multi-mode functionality – CDMA and GSM networks that will include support for air interfaces such as LTE, DC-HSPA+, EDGE, GPRS, EVDO Rev A/B and 1xRTT.Manu 4G modules vendors are expected to adopt this chipset for their next generation module development.



### Generations

#### MSM8215

UMTS/GSM Only



#### MDM9205S Modem

An earlier Qualcomm product was the MDM9205S modem, which would have included the the RF transponders, not just the baseband processor.

The MDM9205S is detailed on the [Qualcomm](https://www.qualcomm.com/products/technology/modems/9205s-modem) website.



#### MDM9215 + MDM9615

The MDM 9615 (CDMA + UMTS/GSM + LTE) was used in the iPhone 5.

Links:

- Feb 2012 - Official [news](https://www.qualcomm.com/news/releases/2012/02/qualcomm-announces-fifth-generation-embedded-data-connectivity-reference) about the MDM9215 and MDM9615.
  - Same announcement on [PR Newswire](https://www.prnewswire.com/news-releases/qualcomm-announces-fifth-generation-embedded-data-connectivity-reference-platform-139804003.html)
- Oct 2012 - News [article](https://www.anandtech.com/show/6330/the-iphone-5-review/19) about the MDM being used in the iPhone 5, and how the MDM6610 and MDM6600 was in the iPhone 4S and 4 CDMA.
- The Apple [wiki](https://theapplewiki.com/wiki/MDM9615) describes the Qualcomm MDM9615M  baseband chip.
- Difference between MDM9215 (UMTS/GSM + LTE) and MDM9615 (CDMA + UMTS/GSM + LTE) on [AnandTech](https://www.anandtech.com/show/6747/htc-one-review/15)
  - Document from [Sierra Wireless](https://fcc.report/FCC-ID/N7NMC7350L/2151421.pdf) also confirms that CMDA is the only difference.

- Another article discussed these chips providing LTE - again, on [AnandTech](https://www.anandtech.com/show/6196/preparing-for-the-iphone-next-rumors-analyzed/3)



#### MDM9225 + MDM9625

The MDM 9625 was used in the iPhone 6.

Links:

- Feb 2013 - Official [news](https://www.qualcomm.com/news/releases/2013/02/qualcomm-technologies-announces-first-4g-lte-advanced-embedded-connectivity) in about the MDM9225 and MDM9625 being used  in mobile computing devices.
- Feb 2013 - Article on [GPS World](https://www.gpsworld.com/qualcomm-announces-4g-lte-advanced-connectivity-platform-for-mobile-computing/) mentions the MDM9225 and MDM9625.
- Nov 2012 - Article about the [MDM9x25](https://www.anandtech.com/show/6463/qualcomm-begins-sampling-mdm9x25-category-4-lte-3gpp-release-10) 



### Speed Accuracy

Apple introduced [speed accuracy](https://developer.apple.com/documentation/corelocation/cllocation/speedaccuracy) into iOS 10.0 (Sep 2016).

It is unclear whether chips prior to this era were able to generate speed accuracy estimates.
