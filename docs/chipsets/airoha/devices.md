## Airoha GNSS Chipsets

### Overview

The Airoha AG3335 chipsets can be thought of as the descendants of the MediaTek MT3333.

A short [article](https://www.airoha.com/products/p/VXKPfHI9iDCvsRWN) for ION GNSS+ 2022 describes the AG3335 series.



### Chipsets

The SIMCOM GNSS solutions [comparison](https://www.avnet.com/wps/wcm/connect/onesite/3a0ea576-cf1b-4a79-8479-5fff508b3c01/EBV-IoT+-+SIMCom+GNSS+Modules+Info+Sheet.pdf?MOD=AJPERES&CVID=nxzMVxi&CVID=nxvsTVu&srsltid=AfmBOopCaoUOA7bpMqRLKpTbZg2-YQLGgqttJoFp0sA4-TuMiJUObcdp) table provides some details on features:

- AG3331 is single band for GPS / GLONASS / BeiDou / QZSS , but isn't used by Garmin or COROS.
- [AG3335M](https://www.airoha.com/products/p/A0Dmm0pijWW3MScb) is multi-band (L1 + L5) but has no support the NavIC.
- AG3335MN is single-band for GPS / GLONASS / Galileo / BeiDou / QZSS but it supports NavIC / IRNSS on L5.
- [AG3352](https://www.airoha.com/products/p/zy4r082hgNywp1bg) is another single-band chip on the Airoha website, which could well be used in future watches.



### Watches

#### Garmin

The availability of all systems + multi-band is due to the Airoha AG3335M.

The AG3335MN and AG3352 chipsets do not support multi-band, thus cannot be used in watches supporting multi-band.

AG3335MN is likely to have been used in the non multi-band watches released in 2022:

- fēnix 7X Solar was released in Jan 2022 and uses the AG3335MN, confirmed by the F Tipi [teardown](http://www.f-blog.info/garmin-fenix-7x-solar-teardown-non-destructive/).
- Venu Sq 2 was released in Sep 2022 and uses the AG3335MN, confirmed by the FCC [teardown](https://fccid.io/IPH-A4390/Internal-Photos/Internal-Photos-5919160).

The Garmin watches since 2023 could be using either the AG3335MN or AG3352, but this is yet to be confirmed.



#### COROS

The availability of all systems + multi-band indicates that COROS are using the AG3335M chipset.

The PACE 3, APEX 2 Pro, VERTIX 2, and VERTIX 2S all have multi-band so they will be using the AG3335M.

The APEX 2 uses Airoha and was released in Nov 2022, but does not have multi-band so probably using the AG3335MN.

