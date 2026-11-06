## ESP-GPS

### Background

The ESP-GPS was the brainchild of Jan Heynen in 2021, and people from around the world have contributed to the project.

There is a huge [discussion](https://www.seabreeze.com.au/forums/Windsurfing/Gps/Another-DIY-GPS-logger-approach) about the ESP-GPS in the Seabreeze forums and a list of [contributors](contributors.md) is also available.

The ESP-GPS is a DIY project but the [SYRAC GPS](https://syrac.es/en/provis/79-syrac-gps-for-watersports.html) has been on sale since Nov 2026, and the [LISA GPS](https://lisawindsurfing.shop/products/lisa-watersports-gps) is expected soon.



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



### References

- [ESP-GPS](https://github.com/RP6conrad/ESP-GPS-Logger) - repository for code and documentation on GitHub
- [Seabreeze discussion](https://www.seabreeze.com.au/forums/Windsurfing/Gps/Another-DIY-GPS-logger-approach) contains most of the project history
- [List of contributors](contributors.md) from around the world, hardware and software
- [Static ESP testing](https://logiqx.github.io/ubx-cfg/testing/static-esp/) - determining optimal GNSS settings, including 5 Hz vs 10 Hz
