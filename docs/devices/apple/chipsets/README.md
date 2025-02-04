## Apple Watches - GNSS

### Apple Watch

Some watches definitely contain a dedicated GNSS chip (e.g. Series 6 and 7) made by Broadcom. Some watches don't contain a dedicated GNSS chip and appear to use the RF frontend + baseband processor, much like many modern phones. Qualcomm supplied the baseband processors in the Apple Watch Series 3, but since the Apple Watch Series 4 it has been an Intel modem.

| Model     | Announced | OS           | GNSS                                   | Chipset |
| ------------ | :------: | :---------: | ------------------------------ | :-----: |
| 1st Gen   | Apr 2015 | watchOS 1.0  | -                                      | - |
| Series 1  | Sep 2016 | watchOS 3.0  | -                                      | - |
| Series 2  | Sep 2016 | watchOS 3.0  | GPS and GLONASS                        | Dedicated GNSS |
| Series 3  | Sep 2017 | watchOS 4.0  | GPS, GLONASS, Galileo and QZSS         | Qualcomm [MDM9635M](https://www.techinsights.com/blog/apple-watch-series-3-teardown) <sup>1</sup> |
| Series 4  | Sep 2018 | watchOS 5.0  | GPS, GLONASS, Galileo and QZSS         | [Intel](https://electronics360.globalspec.com/article/13473/teardown-apple-watch-series-4) PMB9955 <sup>2</sup> |
| Series 5  | Sep 2019 | watchOS 6.0  | GPS, GLONASS, Galileo and QZSS         | Intel PMB9955 <sup>2</sup> |
| Series 6  | Sep 2020 | watchOS 7.0  | GPS, GLONASS, Galileo and QZSS         | Broadcom [BCM47754](https://www.reverse-costing.com/teardown-notes/apple-watch-series-6-evolution/) <sup>3</sup> |
| Series 7  | Sep 2021 | watchOS 8.0  | GPS, GLONASS, Galileo, QZSS and BeiDou | Broadcom [BCM47764](https://iphonewired.com/news/268068/) <sup>3</sup> |
| Series 8  | Sep 2022 | watchOS 9.0  | GPS, GLONASS, Galileo, QZSS and BeiDou | Broadcom <sup>4</sup> |
| Series 9  | Sep 2023 | watchOS 10.0 | GPS, GLONASS, Galileo, QZSS and BeiDou | Broadcom <sup>4</sup> |
| Series 10 | Sep 2024 | watchOS 11.0 | GPS, GLONASS, Galileo, QZSS and BeiDou | Broadcom <sup>4</sup> |

Notes:

1. Qualcomm [MDM9635M](https://theapplewiki.com/wiki/MDM9635) was last used in the [iPhone 6s / 6s Plus](https://www.techinsights.com/blog/apple-iphone-6s-teardown) (Sep 2015) and [Apple Watch Series 3](https://www.techinsights.com/blog/apple-watch-series-3-teardown) (Sep 2017).
2. Intel [PMB9955](https://theapplewiki.com/wiki/PMB9955) baseband processor is the [XMM7560](https://www.intel.com/content/www/us/en/products/docs/wireless-products/mobile-communications/xmm-7560-brief.html) modem chip, according to [TechInsights](https://www.techinsights.com/blog/apple-iphone-xs-max-teardown) and other sources.
3. Teardowns show dedicated GNSS is the Broadcom BCM47754 (Apple Watch Series 6) and BCM47754 (Apple Watch Series 7).
4. The current assumption (on my part) is that Apple have continued to use GNSS chipsets from Broadcom.



### Apple Watch SE

I haven't seen any teardowns for the Apple Watch SE, but both watches have cellular options.

The cellular models of the Apple Watch SE are roughly half the price of the Apple Watch; e.g. SE (gen 2) at £219 vs Series 10 at £399. It is therefore possible that the cellular models use the GNSS capabilities of the Intel PMB9955 baseband processor.

The GPS models of the Apple Watch SE could either either use the same Intel baseband processor, or a dedicated GNSS chipset.

| Model        | Announced |     OS      | GNSS                           |          Chipset           |
| ------------ | :-------: | :---------: | ------------------------------ | :------------------------: |
| SE (1st gen) | Sep 2020  | watchOS 7.0 | GPS and GLONASS                | Intel PMB9955 <sup>1</sup> |
| SE (2nd gen) | Sep 2022  | watchOS 9.0 | GPS, GLONASS, Galileo and QZSS | Intel PMB9955 <sup>1</sup> |

Notes:

1. Intel [PMB9955](https://theapplewiki.com/wiki/PMB9955) baseband processor is the [XMM7560](https://www.intel.com/content/www/us/en/products/docs/wireless-products/mobile-communications/xmm-7560-brief.html) modem chip, according to [TechInsights](https://www.techinsights.com/blog/apple-iphone-xs-max-teardown) and other sources.



### Apple Watch Ultra

Intel [PMB9955](https://theapplewiki.com/wiki/PMB9955) baseband processor does not support multi-band GNSS, so these watches must include a dedicated GNSS chip.

| Model   | Announced | OS           | GNSS                                             | Chipset |
| ------------ | :------: | :---------: | ------------------------------ | :-----: |
| Ultra   | Sep 2022 | watchOS 9.0  | L1 and L5 GPS, GLONASS, Galileo, QZSS and BeiDou | Broadcom <sup>1</sup> |
| Ultra 2 | Sep 2023 | watchOS 10.0 | L1 and L5 GPS, GLONASS, Galileo, QZSS and BeiDou | [Broadcom](https://electronics360.globalspec.com/article/19799/techinsights-teardown-apple-watch-second-generation) <sup>1</sup> |

Notes:

1. Suspect Broadcom [BCM47765](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm47765) or [BCM4778](https://www.broadcom.com/products/wireless/gnss-gps-socs/bcm4778) which supersede the BCM47754 (Apple Watch Series 6) and BCM47754 (Apple Watch Series 7).



### Links

- Apple watch comparisons - used for GNSS capabilities
  - [Apple Watch Ultra 2 vs Apple Watch Series 10](https://www.apple.com/uk/watch/compare/?modelList=watch-ultra-2,watch-series-10) on Apple.com
  - [Comparison of models](https://en.wikipedia.org/wiki/Apple_Watch#Comparison_of_models) on Wikipedia
- Apple [Wiki](https://theapplewiki.com/wiki/Baseband_Device) for details about the baseband (modem) processors
  - Qualcomm [MDM9635M](https://theapplewiki.com/wiki/MDM9635) was used prior to Intel baseband processors
    - Last used in [iPhone 6s / 6s Plus](https://www.techinsights.com/blog/apple-iphone-6s-teardown) (Sep 2015)
    - Last used in [Apple Watch Series 3](https://www.techinsights.com/blog/apple-watch-series-3-teardown) (Sep 2017)
  - Intel [PMB9955](https://theapplewiki.com/wiki/PMB9955) is used extensively in Apple products
    - [TechInsights](https://www.techinsights.com/blog/apple-iphone-xs-max-teardown) believe it to be the Intel [XMM7560](https://www.intel.com/content/www/us/en/products/docs/wireless-products/mobile-communications/xmm-7560-brief.html) LTE Advanced Pro 4G LTE Baseband Processor
    - Intel [XMM7560](https://www.intel.com/content/www/us/en/products/docs/wireless-products/mobile-communications/xmm-7560-brief.html) was used in the iPhone 8 and X, which were both released in Nov 2017.
- [Where is a navigation chip in my iPhone?](https://medium.com/@ilyakorogodin/where-is-a-navigation-chip-in-my-iphone-92ab55a61863) by Ilya Korogodin, 9 May 2022

