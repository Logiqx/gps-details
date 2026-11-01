## ESP-GPS

### GNSS Settings

The optimal GNSS settings for the ESP-GPS have been determined through extensive testing:

| Parameter      |           Value            |
| :------------- | :------------------------: |
| GNSS           | GPS + Galileo + BeiDou B1C |
| Max satellites |             28             |
| Sample rate    |     5 Hz <sup>1</sup>      |
| CPU Freq       |    80 MHz <sup>2</sup>     |
| Logging        |         GPY + TXT          |

1. It will be a surprise to many people, but 5 Hz actually produces more accurate data than 10 Hz.
2. Firmware Rtos6.1betaB74 changed the buffering and made 80 MHz suitable for 5 Hz and 10 Hz logging.



### References

- [ESP-GPS](https://github.com/RP6conrad/ESP-GPS-Logger) - repository for code and documentation on GitHub
- [Static ESP Testing](https://logiqx.github.io/ubx-cfg/testing/static-esp/) - determining optimal GNSS settings, including 5 Hz vs 10 Hz
