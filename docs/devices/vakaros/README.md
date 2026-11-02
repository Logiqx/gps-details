## Vakaros

### Overview

I have only taken a brief look at Vakaros data, and written some Python code to read VKX files.

Some observations about the VKX data:

- Timestamps do not appear to be from the GNSS chip - see [Github](https://github.com/vakaros/vkx/issues/7)
- Altitude appears to be incorrect and cannot be decoded - see [Github](https://github.com/vakaros/vkx/issues/5)
- Precision of SOG is only 0.1 knots... SiRF is 0.01, u-blox is 0.001
  - SOG in VKX is m/s, but when converted to knots it is 1 decimal place
- Precision of COG is only 0.1 degrees... SiRF is 0.01, u-blox is 0.001
- Speed accuracy (sAcc) and horizontal accuracy (hAcc) are absent
  - Number of satellites would also be useful, but sAcc + hAcc are better

I have yet to do a proper side-by-side comparison with the Motion Mini.



### Issues

I have recorded a couple of minor issues in the Vakaros [GitHub](https://github.com/vakaros/vkx).

- [Trouble decoding altitude in VKX file](https://github.com/vakaros/vkx/issues/5) - 2 Aug 2026
- [Timestamps - Vakaros clock or GNSS navigation solution?](https://github.com/vakaros/vkx/issues/7) - 2 Nov 2026
- [Declaration of payload sizes](https://github.com/vakaros/vkx/issues/6#issuecomment-6572672183) - 2 Nov 2026