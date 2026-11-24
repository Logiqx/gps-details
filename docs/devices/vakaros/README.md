## Vakaros

### Overview

I have written some Python code to read VKX files, but only taken a brief look at Vakaros data.

Some initial observations of the VKX data:

- Data issues
  - Timestamps do not appear to be from the GNSS chip - see [Github](https://github.com/vakaros/vkx/issues/7)
    - I need to test firmware 0.32.0 which allegedly contains a fix

  - Altitude appears to be incorrect and cannot be decoded - see [Github](https://github.com/vakaros/vkx/issues/5)
    - I suspect the data is simply broken and there is nothing useful

- Low precision
  - Precision of SOG is only 0.1 knots... SiRF is 0.01, u-blox is 0.001
    - SOG in VKX is m/s, but when converted to knots it is 1 decimal place

  - Precision of COG is only 0.1 degrees... SiRF is 0.01, u-blox is 0.001
    - This is not terrible considering that COROS do not provide decimals
- Possible enhancements
  - Speed accuracy (sAcc) and horizontal accuracy (hAcc) are absent
    - I have suggested this enhancement to Vakaros - see [Github](https://github.com/vakaros/vkx/issues/8)

  - Satellites + HDOP would also be useful, but sAcc + hAcc are better
    - I have not suggested satellites and HDOP to Vakaros


I have yet to do a proper side-by-side comparison with the Motion Mini.



### Issues and Suggestions

I have recorded some issues and suggestions for Vakaros on [GitHub](https://github.com/vakaros/vkx).

- [Suggestion - Accuracy estimates - hAcc, sAcc, cAcc](https://github.com/vakaros/vkx/issues/8) - 6 Nov 2026
- [Timestamps - Vakaros clock or GNSS navigation solution?](https://github.com/vakaros/vkx/issues/7) - 2 Nov 2026
- [Suggestion - Declaration of payload sizes](https://github.com/vakaros/vkx/issues/6#issuecomment-6572672183) (comment) - 2 Nov 2026
- [Trouble decoding altitude in VKX file](https://github.com/vakaros/vkx/issues/5) - 2 Aug 2026
