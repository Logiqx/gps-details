## Apple Watches

Author: Michael George

Created: 4 Feb 2025

Updated: 7 Nov 2025



### Background

Why this has been created? GNSS chipsets...

History of Apple and Broadcom

Teardowns of several Apple watches clearly show a dedicated GNSS chip (e.g. Broadcom BCM477x4 in Series 6 and 7).

Red herring - [Where is a navigation chip in my iPhone?](https://medium.com/@ilyakorogodin/where-is-a-navigation-chip-in-my-iphone-92ab55a61863)

Describe the CPU / System in Package (SiP) and presence of BCM chip on one side.

https://hubweb.cn/apple-silicon/chip-s/



### Investigations

1. Teardowns
   - SiP is resin
   - Teardowns are costly
2. Suspicions
   - Broadcom range
   - I will assume that each SiP contains a specific GNSS chipset.
3. Observations
   - Accuracy estimates



### GNSS Chipsets

Click the links for more detailed information.

#### Apple Watch

| Model     | Announced | CPU      | GNSS                                   | Confirmed | Suspected |
| :----------: | :------: | :---------: | ----- | :----------: | :----------: |
| 1st Gen   | Apr 2015 | S1 | -                                      | - | - |
| Series 1  | Sep 2016 | S1P | -                                      | - | - |
| Series 2  | Sep 2016 | S2 | GPS, GLONASS                      | [BCM47734](../../../chipsets/broadcom/bcm-4773.md) | - |
| Series 3  | Sep 2017 | S3 | GPS, GLONASS, Galileo, QZSS       | - | [BCM47748](../../../chipsets/broadcom/bcm-4774.md) |
| Series 4  | Sep 2018 | S4 | GPS, GLONASS, Galileo, QZSS       | - | [BCM47748](../../../chipsets/broadcom/bcm-4774.md) |
| Series 5  | Sep 2019 | S5 | GPS, GLONASS, Galileo, QZSS       | [BCM47755](../../../chipsets/broadcom/bcm-4775.md) | - |
| [Series 6](https://www.reverse-costing.com/teardown-notes/apple-watch-series-6-evolution/) | Sep 2020 | S6 | GPS, GLONASS, Galileo , QZSS       | [BCM47754](../../../chipsets/broadcom/bcm-4775.md) | - |
| [Series 7](https://iphonewired.com/news/268068/) | Sep 2021 | S7 | GPS, GLONASS, Galileo, QZSS, BeiDou | [BCM47764](../../../chipsets/broadcom/bcm-4776.md) | - |
| Series 8  | Sep 2022 | S8 | GPS, GLONASS, Galileo, QZSS, BeiDou | - | [BCM4776X](../../../chipsets/broadcom/bcm-4776.md) |
| Series 9  | Sep 2023 | S9 | GPS, GLONASS, Galileo, QZSS, BeiDou | - | [BCM4778](../../../chipsets/broadcom/bcm-4778.md) |
| Series 10 | Sep 2024 | S10 | GPS, GLONASS, Galileo, QZSS, BeiDou | - | [BCM4778](../../../chipsets/broadcom/bcm-4778.md) |
| Series 11 | Sep 2025 | S10 | GPS, GLONASS, Galileo, QZSS, BeiDou | - | [BCM4778](../../../chipsets/broadcom/bcm-4778.md) |

#### Apple Watch SE

| Model                                                        | Announced | CPU  | GNSS                                | Confirmed |                     Suspected                      |
| ------------------------------------------------------------ | :-------: | :--: | ----------------------------------- | :-------: | :------------------------------------------------: |
| SE (1st gen)                                                 | Sep 2020  |  S5  | GPS, GLONASS, Galileo, QZSS         |     -     | [BCM47755](../../../chipsets/broadcom/bcm-4775.md) |
| [SE (2nd gen)](https://electronics360.globalspec.com/article/19799/techinsights-teardown-apple-watch-second-generation) | Sep 2022  |  S8  | GPS, GLONASS, Galileo, QZSS         |     -     | [BCM4776X](../../../chipsets/broadcom/bcm-4776.md) |
| SE (3rd gen)                                                 | Sep 2025  | S10  | GPS, GLONASS, Galileo, QZSS, BeiDou |     -     | [BCM4778](../../../chipsets/broadcom/bcm-4778.md)  |

#### Apple Watch Ultra

| Model   | Announced | CPU      | GNSS                                             | Confirmed | Suspected |
| ------------ | :------: | :---------: | :----------------------------: | :-----: | ------- |
| Ultra   | Sep 2022 | S8 | L1 and L5 - GPS, GLONASS, Galileo, QZSS, BeiDou | - | [BCM4776X](../../../chipsets/broadcom/bcm-4776.md) |
| Ultra 2 | Sep 2023 | S9 | L1 and L5 - GPS, GLONASS, Galileo, QZSS, BeiDou | - | [BCM4778](../../../chipsets/broadcom/bcm-4778.md) |
| Ultra 3 | Sep 2025 | S10 | L1 and L5 - GPS, GLONASS, Galileo, QZSS, BeiDou | - | [BCM4778](../../../chipsets/broadcom/bcm-4778.md) |



### Links

- Apple watch comparisons - used for GNSS capabilities
  - [Apple Watch Ultra 2 vs Apple Watch Series 10](https://www.apple.com/uk/watch/compare/?modelList=watch-ultra-2,watch-series-10) on Apple.com
  - [Comparison of models](https://en.wikipedia.org/wiki/Apple_Watch#Comparison_of_models) on Wikipedia
  - [watchOS](https://en.wikipedia.org/wiki/WatchOS) on Wikipedia
- [Apple Watch 7 - new GPS & Wi-Fi Chips - What it means](https://the5krunner.com/2021/09/16/apple-watch-7-new-gps-chip-what-it-means/) by the the5krunner, 2021

