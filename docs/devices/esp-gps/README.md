## ESP-GPS

### Background

The ESP-GPS is the brainchild of Jan Heynen in 2021, and people from around the world have contributed to the project.

There is a huge discussion about the ESP-GPS in the [Seabreeze](https://www.seabreeze.com.au/forums/Windsurfing/Gps/Another-DIY-GPS-logger-approach) forums and a list of [contributors](contributors.md) is also available.

The ESP-GPS is a DIY project but the [SYRAC GPS](https://syrac.es/en/provis/79-syrac-gps-for-watersports.html) has been on sale since Nov 2026, and the [LISA GPS](https://lisawindsurfing.shop/products/lisa-watersports-gps) is expected soon.

A nice video by Paco Raap provides an overview of the ESP-GPS, and can be found on [YouTube](https://www.youtube.com/watch?v=6Njr3pmpBdM).



### Recommended Settings

The optimal GNSS settings for the ESP-GPS have been determined through extensive [testing](https://logiqx.github.io/ubx-cfg/testing/static-esp/):

| Parameter      |           Value            |
| :------------- | :------------------------: |
| GNSS           | GPS + Galileo + BeiDou B1C |
| Max satellites |             28             |
| Sample rate    |     5 Hz <sup>1</sup>      |
| CPU Freq       |    80 MHz <sup>2</sup>     |
| Logging        |         GPY + TXT          |

1. 5 Hz data has been demonstrated to be more accurate than 10 Hz data. I have an article planned for the future.
2. Firmware Rtos6.1betaB74 changed the buffering and made 80 MHz suitable for 5 Hz and 10 Hz logging.



### Useful Links

- [YouTube](https://www.youtube.com/watch?v=6Njr3pmpBdM) - overview of the ESP-GPS by Paco Raap
- [Make your own GPS logger](https://docs.google.com/document/d/1XJD6BV1Xay4nXo0cDuo_IOtxC_f1LyG7DE7X6KGlAB0/edit?tab=t.0#heading=h.z6ne0og04bp5) - documentation by Jan Heynen
- [ESP-GPS](https://github.com/RP6conrad/ESP-GPS-Logger) - repository for code and documentation
- [Seabreeze discussion](https://www.seabreeze.com.au/forums/Windsurfing/Gps/Another-DIY-GPS-logger-approach) - conception and evolution
- [List of contributors](contributors.md) - hardware, software, and derivates
- [Static ESP testing](https://logiqx.github.io/ubx-cfg/testing/static-esp/) - optimal GNSS settings, including 5 Hz vs 10 Hz
