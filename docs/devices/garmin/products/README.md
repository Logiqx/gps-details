## Garmin Product Numbers

Garmin product details can be obtained via the Garmin API using the following Linux commands.

```
OUT=deviceTypes.json
curl -o $OUT https://apps.garmin.com/api/appsLibraryExternalServices/api/asw/deviceTypes

CSV=deviceTypes.csv
jq -r '.[] | (.partNumber + "," + .name)' $OUT | sed 's/™//;s/®//' | sort -f -t, -k2 >$CSV

TXT=deviceTypes.txt
sed -E 's/(006-B)(....)(-00),(.*)/| \2 | \4 | \1\2\3 |/' $CSV >$TXT
```

Full list of Garmin products supporting Connect IQ applications as of 28 May 2026.

| Product | Description                                                  |  Part Number  |
| :-----: | ------------------------------------------------------------ | :----: |
| 4656 | Approach S50 | 006-B4656-00 |
| 2656 | Approach S60 | 006-B2656-00 |
| 2907 | Approach S60 | 006-B2907-00 |
| 3393 | Approach S62 | 006-B3393-00 |
| 3700 | Approach S62 | 006-B3700-00 |
| 4233 | Approach S70 (42mm) | 006-B4233-00 |
| 4234 | Approach S70 (47mm) | 006-B4234-00 |
| 3500 | Captain Marvel | 006-B3500-00 |
| 3535 | Captain Marvel | 006-B3535-00 |
| 2187 | D2 Air | 006-B2187-00 |
| 4125 | D2 Air X10 | 006-B4125-00 |
| 4944 | D2 Air X15 | 006-B4944-00 |
| 2262 | D2 Bravo | 006-B2262-00 |
| 2467 | D2 Bravo | 006-B2467-00 |
| 2547 | D2 Bravo Titanium | 006-B2547-00 |
| 2819 | D2 Charlie | 006-B2819-00 |
| 2994 | D2 Charlie | 006-B2994-00 |
| 3197 | D2 Delta | 006-B3197-00 |
| 3198 | D2 Delta PX | 006-B3198-00 |
| 3324 | D2 Delta PX | 006-B3324-00 |
| 3196 | D2 Delta S | 006-B3196-00 |
| 4079 | D2 Mach 1 | 006-B4079-00 |
| 4556 | D2 Mach 1 Pro | 006-B4556-00 |
| 4879 | D2 Mach 2 | 006-B4879-00 |
| 5056 | D2 Mach 2 Pro | 006-B5056-00 |
| 3499 | Darth Vader | 006-B3499-00 |
| 3538 | Darth Vader | 006-B3538-00 |
| 4005 | Descent G1 | 006-B4005-00 |
| 4132 | Descent G1 | 006-B4132-00 |
| 4588 | Descent G2 | 006-B4588-00 |
| 3258 | Descent MK2 | 006-B3258-00 |
| 3702 | Descent MK2 | 006-B3702-00 |
| 4224 | Descent MK3 (43mm) | 006-B4224-00 |
| 4222 | Descent MK3 - 43mm | 006-B4222-00 |
| 4223 | Descent MK3i - 51mm | 006-B4223-00 |
| 4225 | Descent MK3i -51mm | 006-B4225-00 |
| 2859 | Descent Mk1 | 006-B2859-00 |
| 2991 | Descent Mk1 | 006-B2991-00 |
| 3542 | Descent Mk2S | 006-B3542-00 |
| 3930 | Descent Mk2S | 006-B3930-00 |
| 1836 | Edge 1000 | 006-B1836-00 |
| 2052 | Edge 1000 | 006-B2052-00 |
| 2053 | Edge 1000 | 006-B2053-00 |
| 2070 | Edge 1000 | 006-B2070-00 |
| 2100 | Edge 1000 | 006-B2100-00 |
| 2274 | Edge 1000 | 006-B2274-00 |
| 2713 | Edge 1030 | 006-B2713-00 |
| 2924 | Edge 1030 | 006-B2924-00 |
| 3570 | Edge 1030 Plus | 006-B3570-00 |
| 3812 | Edge 1030 Plus | 006-B3812-00 |
| 3095 | Edge 1030, Bontrager | 006-B3095-00 |
| 3843 | Edge 1040 | 006-B3843-00 |
| 4305 | Edge 1040 | 006-B4305-00 |
| 4440 | Edge 1050 | 006-B4440-00 |
| 2909 | Edge 130 | 006-B2909-00 |
| 3092 | Edge 130 | 006-B3092-00 |
| 3558 | Edge 130 Plus | 006-B3558-00 |
| 3813 | Edge 130 Plus | 006-B3813-00 |
| 2067 | Edge 520 | 006-B2067-00 |
| 2260 | Edge 520 | 006-B2260-00 |
| 2261 | Edge 520 | 006-B2261-00 |
| 3112 | Edge 520 Plus | 006-B3112-00 |
| 3142 | Edge 520 Plus | 006-B3142-00 |
| 3121 | Edge 530 | 006-B3121-00 |
| 3349 | Edge 530 | 006-B3349-00 |
| 4061 | Edge 540 | 006-B4061-00 |
| 4633 | Edge 550 | 006-B4633-00 |
| 2530 | Edge 820 | 006-B2530-00 |
| 2599 | Edge 820 | 006-B2599-00 |
| 2600 | Edge 820 | 006-B2600-00 |
| 2628 | Edge 820 | 006-B2628-00 |
| 2629 | Edge 820 | 006-B2629-00 |
| 2630 | Edge 820 | 006-B2630-00 |
| 3122 | Edge 830 | 006-B3122-00 |
| 3350 | Edge 830 | 006-B3350-00 |
| 4062 | Edge 840 | 006-B4062-00 |
| 4634 | Edge 850 | 006-B4634-00 |
| 3011 | Edge Explore | 006-B3011-00 |
| 2204 | Edge Explore 1000 | 006-B2204-00 |
| 4169 | Edge Explore 2 | 006-B4169-00 |
| 2531 | Edge Explore 820 | 006-B2531-00 |
| 4655 | Edge MTB | 006-B4655-00 |
| 3638 | Enduro | 006-B3638-00 |
| 3872 | Enduro | 006-B3872-00 |
| 4341 | Enduro 2 | 006-B4341-00 |
| 4575 | Enduro 3 | 006-B4575-00 |
| 3501 | First Avenger | 006-B3501-00 |
| 3536 | First Avenger | 006-B3536-00 |
| 2313 | ForeAthlete 230J | 006-B2313-00 |
| 2397 | ForeAthlete 235J | 006-B2397-00 |
| 3914 | ForeAthlete 245 | 006-B3914-00 |
| 3913 | ForeAthlete 245 Music | 006-B3913-00 |
| 3469 | ForeAthlete 45 | 006-B3469-00 |
| 4033 | ForeAthlete 55 | 006-B4033-00 |
| 2311 | ForeAthlete 630J | 006-B2311-00 |
| 3003 | ForeAthlete 645 | 006-B3003-00 |
| 3004 | ForeAthlete 645 Music | 006-B3004-00 |
| 2534 | ForeAthlete 735XTJ | 006-B2534-00 |
| 3794 | ForeAthlete 745 | 006-B3794-00 |
| 2132 | ForeAthlete 920XTJ | 006-B2132-00 |
| 2833 | ForeAthlete 935 | 006-B2833-00 |
| 4432 | Forerunner 165 | 006-B4432-00 |
| 4433 | Forerunner 165 Music | 006-B4433-00 |
| 4815 | Forerunner 170 | 006-B4815-00 |
| 4814 | Forerunner 170 Music | 006-B4814-00 |
| 2157 | Forerunner 230 | 006-B2157-00 |
| 2312 | Forerunner 230 | 006-B2312-00 |
| 2396 | Forerunner 235 | 006-B2396-00 |
| 2431 | Forerunner 235 | 006-B2431-00 |
| 2516 | Forerunner 235 | 006-B2516-00 |
| 2653 | Forerunner 235 | 006-B2653-00 |
| 2733 | Forerunner 235 | 006-B2733-00 |
| 3076 | Forerunner 245 | 006-B3076-00 |
| 3145 | Forerunner 245 | 006-B3145-00 |
| 3077 | Forerunner 245 Music | 006-B3077-00 |
| 3321 | Forerunner 245 Music | 006-B3321-00 |
| 3992 | Forerunner 255 | 006-B3992-00 |
| 3990 | Forerunner 255 Music | 006-B3990-00 |
| 3993 | Forerunner 255S | 006-B3993-00 |
| 3991 | Forerunner 255S Music | 006-B3991-00 |
| 4257 | Forerunner 265 | 006-B4257-00 |
| 4258 | Forerunner 265S | 006-B4258-00 |
| 3282 | Forerunner 45 | 006-B3282-00 |
| 3847 | Forerunner 45 Plus | 006-B3847-00 |
| 3869 | Forerunner 55 | 006-B3869-00 |
| 4838 | Forerunner 55 | 006-B4838-00 |
| 4574 | Forerunner 570 - 42mm | 006-B4574-00 |
| 4570 | Forerunner 570 - 47mm | 006-B4570-00 |
| 2156 | Forerunner 630 | 006-B2156-00 |
| 2310 | Forerunner 630 | 006-B2310-00 |
| 2886 | Forerunner 645 | 006-B2886-00 |
| 2888 | Forerunner 645 Music | 006-B2888-00 |
| 4916 | Forerunner 70 | 006-B4916-00 |
| 5214 | Forerunner 70 | 006-B5214-00 |
| 2158 | Forerunner 735XT | 006-B2158-00 |
| 2533 | Forerunner 735XT | 006-B2533-00 |
| 3589 | Forerunner 745 | 006-B3589-00 |
| 1765 | Forerunner 920XT | 006-B1765-00 |
| 2130 | Forerunner 920XT | 006-B2130-00 |
| 2131 | Forerunner 920XT | 006-B2131-00 |
| 2691 | Forerunner 935 | 006-B2691-00 |
| 3113 | Forerunner 945 | 006-B3113-00 |
| 3441 | Forerunner 945 | 006-B3441-00 |
| 3652 | Forerunner 945 LTE | 006-B3652-00 |
| 3978 | Forerunner 945 LTE | 006-B3978-00 |
| 4024 | Forerunner 955 Dual Power | 006-B4024-00 |
| 4315 | Forerunner 965 | 006-B4315-00 |
| 4565 | Forerunner 970 | 006-B4565-00 |
| 3284 | GPSMAP 66i | 006-B3284-00 |
| 3658 | GPSMAP 66i | 006-B3658-00 |
| 3028 | GPSMAP 66s / 66st | 006-B3028-00 |
| 3657 | GPSMAP 66s / 66st | 006-B3657-00 |
| 3694 | GPSMAP 66sr | 006-B3694-00 |
| 4336 | GPSMAP 67 | 006-B4336-00 |
| 4473 | GPSMAP 67 | 006-B4473-00 |
| 3454 | GPSMAP 86i | 006-B3454-00 |
| 3452 | GPSMAP 86s | 006-B3452-00 |
| 3453 | GPSMAP 86sc | 006-B3453-00 |
| 3455 | GPSMAP 86sci | 006-B3455-00 |
| 4552 | GPSMAP H1 | 006-B4552-00 |
| 3405 | Garmin Swim 2 | 006-B3405-00 |
| 3639 | Garmin Swim 2 | 006-B3639-00 |
| 3888 | Instinct 2 | 006-B3888-00 |
| 4071 | Instinct 2 | 006-B4071-00 |
| 3889 | Instinct 2S | 006-B3889-00 |
| 4091 | Instinct 2S | 006-B4091-00 |
| 4394 | Instinct 2X | 006-B4394-00 |
| 4586 | Instinct 3 – 45 mm, AMOLED | 006-B4586-00 |
| 4585 | Instinct 3 – 45 mm, Solar | 006-B4585-00 |
| 4587 | Instinct 3 – 50 mm, AMOLED | 006-B4587-00 |
| 4759 | Instinct 3 – 50 mm, Solar | 006-B4759-00 |
| 4155 | Instinct Crossover | 006-B4155-00 |
| 4678 | Instinct Crossover AMOLED | 006-B4678-00 |
| 4583 | Instinct E – 40 mm | 006-B4583-00 |
| 4584 | Instinct E – 45 mm | 006-B4584-00 |
| 4105 | MARQ (Gen 2) | 006-B4105-00 |
| 4106 | MARQ (Gen 2) | 006-B4106-00 |
| 3624 | MARQ Adventurer | 006-B3624-00 |
| 3648 | MARQ Adventurer | 006-B3648-00 |
| 3251 | MARQ Athlete | 006-B3251-00 |
| 3451 | MARQ Athlete | 006-B3451-00 |
| 3247 | MARQ Aviator | 006-B3247-00 |
| 3421 | MARQ Aviator | 006-B3421-00 |
| 4124 | MARQ Aviator (Gen 2) | 006-B4124-00 |
| 3248 | MARQ Captain | 006-B3248-00 |
| 3448 | MARQ Captain | 006-B3448-00 |
| 3249 | MARQ Commander | 006-B3249-00 |
| 3449 | MARQ Commander | 006-B3449-00 |
| 4472 | MARQ Commander (Gen 2) – Carbon Edition | 006-B4472-00 |
| 3246 | MARQ Driver | 006-B3246-00 |
| 3420 | MARQ Driver | 006-B3420-00 |
| 3250 | MARQ Expedition | 006-B3250-00 |
| 3450 | MARQ Expedition | 006-B3450-00 |
| 3739 | MARQ Golfer | 006-B3739-00 |
| 3850 | MARQ Golfer | 006-B3850-00 |
| 3737 | Mercedes-Benz Venu | 006-B3737-00 |
| 3740 | Mercedes-Benz Venu | 006-B3740-00 |
| 4171 | Mercedes-Benz Venu 2 | 006-B4171-00 |
| 4180 | Mercedes-Benz Venu 2 | 006-B4180-00 |
| 4175 | Mercedes-Benz Venu 2S | 006-B4175-00 |
| 4181 | Mercedes-Benz Venu 2S | 006-B4181-00 |
| 3459 | Montana 700 | 006-B3459-00 |
| 4415 | Montana 700 | 006-B4415-00 |
| 5015 | Montana 760i | 006-B5015-00 |
| 2512 | Oregon 7 Series | 006-B2512-00 |
| 2681 | Oregon 7 Series | 006-B2681-00 |
| 2692 | Oregon 7 Series | 006-B2692-00 |
| 3498 | Rey | 006-B3498-00 |
| 3537 | Rey | 006-B3537-00 |
| 2444 | Rino 7 Series | 006-B2444-00 |
| 3187 | Rino 7 Series | 006-B3187-00 |
| 3226 | Venu | 006-B3226-00 |
| 3389 | Venu | 006-B3389-00 |
| 3703 | Venu 2 | 006-B3703-00 |
| 3950 | Venu 2 | 006-B3950-00 |
| 3851 | Venu 2 Plus | 006-B3851-00 |
| 4017 | Venu 2 Plus | 006-B4017-00 |
| 3704 | Venu 2S | 006-B3704-00 |
| 3949 | Venu 2S | 006-B3949-00 |
| 4260 | Venu 3 | 006-B4260-00 |
| 4261 | Venu 3S | 006-B4261-00 |
| 4644 | Venu 4 – 41 mm | 006-B4644-00 |
| 4643 | Venu 4 – 45 mm | 006-B4643-00 |
| 3600 | Venu Sq. | 006-B3600-00 |
| 3603 | Venu Sq. | 006-B3603-00 |
| 3837 | Venu Sq. | 006-B3837-00 |
| 4118 | Venu Sq. | 006-B4118-00 |
| 4115 | Venu Sq. 2 | 006-B4115-00 |
| 4116 | Venu Sq. 2 Music | 006-B4116-00 |
| 3596 | Venu Sq. Music | 006-B3596-00 |
| 3599 | Venu Sq. Music | 006-B3599-00 |
| 3838 | Venu Sq. Music | 006-B3838-00 |
| 4119 | Venu Sq. Music | 006-B4119-00 |
| 4603 | Venu X1 | 006-B4603-00 |
| 4522 | eTrex Touch | 006-B4522-00 |
| 1988 | epix | 006-B1988-00 |
| 2330 | epix | 006-B2330-00 |
| 2331 | epix | 006-B2331-00 |
| 2332 | epix | 006-B2332-00 |
| 2457 | epix | 006-B2457-00 |
| 3943 | epix (Gen 2) | 006-B3943-00 |
| 3944 | epix (Gen 2) | 006-B3944-00 |
| 4312 | epix Pro (42mm) | 006-B4312-00 |
| 4313 | epix Pro (47mm) | 006-B4313-00 |
| 4314 | epix Pro (51mm) | 006-B4314-00 |
| 2050 | fēnix 3 | 006-B2050-00 |
| 2188 | fēnix 3 | 006-B2188-00 |
| 2189 | fēnix 3 | 006-B2189-00 |
| 2293 | fēnix 3 | 006-B2293-00 |
| 2407 | fēnix 3 | 006-B2407-00 |
| 2408 | fēnix 3 | 006-B2408-00 |
| 2413 | fēnix 3 HR | 006-B2413-00 |
| 2473 | fēnix 3 HR | 006-B2473-00 |
| 2474 | fēnix 3 HR | 006-B2474-00 |
| 2475 | fēnix 3 HR | 006-B2475-00 |
| 2476 | fēnix 3 HR | 006-B2476-00 |
| 2477 | fēnix 3 HR | 006-B2477-00 |
| 2697 | fēnix 5 | 006-B2697-00 |
| 2796 | fēnix 5 | 006-B2796-00 |
| 3089 | fēnix 5 Plus | 006-B3089-00 |
| 3110 | fēnix 5 Plus | 006-B3110-00 |
| 2544 | fēnix 5S | 006-B2544-00 |
| 2797 | fēnix 5S | 006-B2797-00 |
| 2900 | fēnix 5S Plus | 006-B2900-00 |
| 3134 | fēnix 5S Plus | 006-B3134-00 |
| 2604 | fēnix 5X | 006-B2604-00 |
| 2798 | fēnix 5X | 006-B2798-00 |
| 3111 | fēnix 5X Plus | 006-B3111-00 |
| 3135 | fēnix 5X Plus | 006-B3135-00 |
| 3289 | fēnix 6 | 006-B3289-00 |
| 3514 | fēnix 6 | 006-B3514-00 |
| 3770 | fēnix 6 Dual Power | 006-B3770-00 |
| 3290 | fēnix 6 Pro | 006-B3290-00 |
| 3515 | fēnix 6 Pro | 006-B3515-00 |
| 3771 | fēnix 6 Pro Dual Power | 006-B3771-00 |
| 3767 | fēnix 6 Pro Solar | 006-B3767-00 |
| 3766 | fēnix 6 Solar | 006-B3766-00 |
| 3287 | fēnix 6S | 006-B3287-00 |
| 3512 | fēnix 6S | 006-B3512-00 |
| 3768 | fēnix 6S Dual Power | 006-B3768-00 |
| 3288 | fēnix 6S Pro | 006-B3288-00 |
| 3513 | fēnix 6S Pro | 006-B3513-00 |
| 3769 | fēnix 6S Pro Dual Power | 006-B3769-00 |
| 3765 | fēnix 6S Pro Solar | 006-B3765-00 |
| 3764 | fēnix 6S Solar | 006-B3764-00 |
| 3291 | fēnix 6X Pro | 006-B3291-00 |
| 3516 | fēnix 6X Pro | 006-B3516-00 |
| 3906 | fēnix 7 | 006-B3906-00 |
| 3909 | fēnix 7 | 006-B3909-00 |
| 4375 | fēnix 7 Pro | 006-B4375-00 |
| 4595 | fēnix 7 Pro – Solar Edition (No Wi-Fi®) | 006-B4595-00 |
| 3905 | fēnix 7S | 006-B3905-00 |
| 3908 | fēnix 7S | 006-B3908-00 |
| 4374 | fēnix 7S Pro | 006-B4374-00 |
| 3907 | fēnix 7X | 006-B3907-00 |
| 3910 | fēnix 7X | 006-B3910-00 |
| 4376 | fēnix 7X Pro | 006-B4376-00 |
| 4596 | fēnix 7X Pro No Wi-Fi | 006-B4596-00 |
| 4534 | fēnix 8 AMOLED (43mm) | 006-B4534-00 |
| 4536 | fēnix 8 AMOLED (47mm/51mm) | 006-B4536-00 |
| 4631 | fēnix 8 Pro | 006-B4631-00 |
| 4532 | fēnix 8 Solar (47mm) | 006-B4532-00 |
| 4533 | fēnix 8 Solar (51mm) | 006-B4533-00 |
| 2432 | fēnix Chronos | 006-B2432-00 |
| 2675 | fēnix Chronos | 006-B2675-00 |
| 4666 | fēnix E | 006-B4666-00 |
| 3782 | quatix 6 | 006-B3782-00 |
| 3783 | quatix 6X | 006-B3783-00 |
| 4135 | tactix 7 | 006-B4135-00 |
| 4542 | tactix 7 – AMOLED Edition | 006-B4542-00 |
| 4775 | tactix 8 – 47 mm, AMOLED | 006-B4775-00 |
| 4776 | tactix 8 – 51 mm, Solar | 006-B4776-00 |
| 1907 | vívoactive | 006-B1907-00 |
| 2160 | vívoactive | 006-B2160-00 |
| 2700 | vívoactive 3 | 006-B2700-00 |
| 2976 | vívoactive 3 | 006-B2976-00 |
| 3446 | vívoactive 3 | 006-B3446-00 |
| 3473 | vívoactive 3 Mercedes-Benz® Collection | 006-B3473-00 |
| 3477 | vívoactive 3 Mercedes-Benz® Collection | 006-B3477-00 |
| 2988 | vívoactive 3 Music | 006-B2988-00 |
| 3066 | vívoactive 3 Music | 006-B3066-00 |
| 3163 | vívoactive 3 Music | 006-B3163-00 |
| 3225 | vívoactive 4 | 006-B3225-00 |
| 3388 | vívoactive 4 | 006-B3388-00 |
| 3224 | vívoactive 4S | 006-B3224-00 |
| 3387 | vívoactive 4S | 006-B3387-00 |
| 4426 | vívoactive 5 | 006-B4426-00 |
| 4625 | vívoactive 6 | 006-B4625-00 |
| 2337 | vívoactive HR | 006-B2337-00 |
| 2497 | vívoactive HR | 006-B2497-00 |
| 3428 | vívolife | 006-B3428-00 |
