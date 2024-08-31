![GP3S Logo](img/combined-logo.png)

## Introduction

Do you own a COROS watch, or planning to buy one for windsurfing / wingfoiling / kitesurfing? Then if so this guide has been written specifically for the benefit of you and your mates!

Knowing how fast you have been going on the water and whether you are faster than your mates adds an element of fun to your water time, but your watch choice and setup makes a big difference to the accuracy.

The problem with reporting max speeds (popular at all levels) is that they are the most prone to errors; some large and some small. Only last week my COROS APEX Pro reported [37.88](https://www.facebook.com/michael.george.545/posts/10220672656646659) knots when wingfoiling, instead of the actual 23 knots.

All GPS receivers are prone to errors, but some more so than others. Even if you own a good / accurate device the setup and usage will have a huge impact on the likelihood of speeds being real.

This is why I've decided to write guides for COROS and Garmin devices. There is a lot to cover, but I'll try to be concise. Both of the guides have the same structure and the COROS one includes the following sections:

- Watch choice - GNSS chipset, general features
- Watch setup - firmware, watch settings
- Linked accounts - GP3S, Hoolan, Waterspeed, Strava, Relive
- Watch usage - wearing the watch, recording an activity, additional tips
- Data analysis - reviewing results, exporting activities, importing activities
- Known issues

I'd encourage you as a COROS owner (or potential owner) to have a read of this guide to ensure you are getting the best out of your watch.



## Watch Choice

The COROS watches have been popular on [gps-speedsurfing.com](https://www.gps-speedsurfing.com/) since they became an approved device. This all happened when the Locosys devices were becoming scarce (discontinued) and an alternative was desperately required.

At the time, COROS were the only brand willing to collaborate with the speedsurfing community and they developed a dedicated speedsurfing activity for our needs. Sure, the speedsurfing  wasn't perfect (and a bit buggy) but it was a decent start.

Since the original APEX Pro / VERTIX there have been a number of new watches released and approved for use on [gps-speedsurfing.com](https://www.gps-speedsurfing.com/); APEX 2 / APEX 2 Pro / VERTIX 2 / VERTIX 2S. The newer devices are significantly better in terms of accuracy.



### GNSS Chipset

The [GNSS](https://en.wikipedia.org/wiki/Satellite_navigation) chipset is the primary limiting factor when it comes to the accuracy of GPS watches. Additional factors include antenna design, GNSS firmware, watch firmware, user settings and activity mode watch app.

The APEX Pro and VERTIX both used a Sony GNSS chipset which prioritises low power usage over accuracy. This comes at the expense of trustworthy numbers in our sports, where people tend to believe the highest number shown during a session.

The Sony-based watches have a number of common issues:

- Identical speeds being repeated several seconds in a row
- Big spikes after loss of lock; submersion, buildings, etc.
- Low resolution / precision of speed; unique to the Sony chipset used by COROS.

The APEX 2, APEX 2 Pro, VERTIX 2 and VERTIX 2S use the Airoha / MediaTek chipset. These can produce pretty decent data when using the right firmware, settings, and activity. They can also produce unreliable data if you get any of these things wrong!



### General Features

When choosing a COROS watch you should ensure that it includes the speedsurfing mode. You might assume the windsurfing mode would behave in the same way (perhaps displaying different information) but that isn't the case. More on that later!

Pertinent differences between the watch ranges:

- Watch size - VERTIX 2 > APEX 2 Pro > APEX 2
- Battery life - VERTIX 2 > APEX 2 Pro > APEX 2
- Ruggedness - VERTIX 2 > APEX 2 Pro > APEX 2
- HR monitor - e.g. VERTIX 2S better than VERTIX 2
- GNSS antenna design - e.g. VERTIX 2S better than VERTIX 2

You can choose the watch best suited to your personal requirements and budget.



### Recommendations

Nowadays, I would only ever recommend the APEX 2, APEX 2 Pro, VERTIX 2, and VERTIX 2S. Although the PACE 3 uses the Airoha GNSS chipset, it does not have the speedsurfing activity which is crucial for reliable / accurate data.

The earlier models such as the APEX Pro and VERTIX are too prone to inaccuracies, just like Garmin watches using the same family of Sony GNSS chipset. If you have one and care about your speeds then it may be worth treating yourself to an upgrade!



## Watch Setup

### Firmware

You can check which version of the firmware you have on the watch itself.

System -> More Settings -> Device Info -> Software

![firmware](img/firmware.jpg)



IMPORTANT - recent firmware releases have been detrimental to the accuracy / reliability of COROS watches. The issues are being worked on right now!

- APEX Pro and VERTIX
  - 3.0309.0 and 3.0409.0 were the last good versions, so keep them installed.
  - DO NOT upgrade to 3.0508.0
- APEX 2, APEX 2 Pro, VERTIX 2 and VERTIX 2S
  - 3.0308.0 was the last good version, so keep it installed.
  - DO NOT upgrade to 3.0408.0, 3.0409.0, 3.0508.0 or 3.0510.0



You can also view the firmware version from within the COROS application.

![apex-pro-fw](img/apex-pro-fw.png)



TOP TIPS:

- If you have the problematic 3.0508.0 on your APEX Pro or VERTIX you can downgrade to 3.0309.0 by following these [instructions](https://support.coros.com/hc/en-us/articles/15344945273620-How-to-manually-update-my-COROS-watch) from COROS.
- You should re-check your GPS / GNSS settings after every firmware update!



### Watch Settings

The GPS / GNSS mode has far more impact than you might think. The default mode of standard GPS gives longer battery life but is far more likely to produce unreliable data.

The worst errors from the COROS watches occur when using standard GPS mode. It's important that you use All Systems or Dual Frequency on the latest watches.

If you have one of the older watches then you should choose one of the modes which uses multiple systems. Personally, I use GPS + BeiDou + Galileo + QZSS.

System -> More Settings -> Satellite Systems -> Mode

![satellites](img/satellites.jpg)



The time on COROS watches has a tendency to drift, but this can be avoided by ensuring that [auto-sync](https://support.coros.com/hc/en-us/articles/5859961688212-The-watch-is-not-displaying-the-correct-time) is switched on.

System -> More Settings -> Date / Time -> Auto Sync

![auto-sync](img/auto-sync.jpg)



These are some other settings that I would advise:

- System -> Activity Interface
  - Auto Scroll = off / on, depending on personal preference
- System -> Wi-Fi
  - Add network for manual sync, downloading maps and firmware updates
- System -> More Settings
  - Gesture Backlight = off, preventing the automatic light when in bed
  - Touch Screen = map only, since touch screens are eratic when wet
  - Auto Lock
    - Standby Mode - hold to unlock, since it is easier than using the dial
    - Activity Mode - hold to unlock, since it is easier than using the dial



Prior to starting the activity you can also change the following settings:

- Speed into a Run = 12 knots or 22 km/h
- Speed Units = knots or km/h
- Activity Alert
  - New Record Alert = on



Within the COROS app you can configure the speedsurfing activity:

- Activity data pages - personal preference
- Button settings - personal preference
- Activity alert - new record alert = on



Notes:

- COROS settings are also described in the [guide](https://drive.google.com/file/d/1YQbuPNeTJ3ivgykGI4qOz2yzMxxHmD9B/view?usp%3Dsharing) by Ingolf van Oostveen.
- You should re-check your GPS / GNSS settings after every firmware update!



### Applications

COROS do not support 3rd part applications like Apple or Garmin.

If you have a watch that includes speedsurfing and windsurfing activities you should use the speedsurfing activity, which will be covered later.

If you are using a watch such as the APEX, PACE 2 or PACE 3 then GPS cardio is probably your best bet. Avoid using the custom activities for reasons described later.



## Linking Accounts

### GP3S

You can link your COROS to GP3S using the relevant [page](https://www.gps-speedsurfing.com/mygps.aspx?mnu=mydevices).

Dashboard -> My Items -> My Devices

![gp3s-devices](img/gp3s-devices.png)

Select the COROS option under (re-)Connect a device.

![gp3s-coros](img/gp3s-coros.png)

Once the process has been completed your speedsurfing sessions will automatically be uploaded to GP3S, allowing you to easily post to any one of the sites.

What happens is the FIT file for each session is processed by GP3S and some obvious spikes will be removed. Some spikes (especially Sony ones) can slip through the filters.



### Hoolan + Waterspeed

Hoolan and Waterspeed are popular apps with Apple watch users. Hoolan and Waterspeed can also be linked to Garmin Connect accounts, ensuring that watersport activities are automatically uploaded to their platforms.

This capability doesn't exist for COROS watches right now, but maybe it will be available in the future. I'm not privy to any information saying that this will ever happen, just saying that it is theoretically possible!



### Strava + Relive

You can link your COROS account to Strava and Relive, but I feel obliged to provide a warning. Strava does NOT know how to process the speed data recorded by your watch and cannot be trusted to be accurate.

If you want to get techie, it does not process the Doppler-derived speeds of your GPS watch and is therefore prone to spikes. Some will be small (e.g. just a few knots), and some will be large (e.g. tens of knots).

Strava is fine as an activity diary, recording where you sailed and how far but you should completely disregard and high speeds being reported. No, you can't just eyeball the data and remove the obvious spikes yourself...



## Watch Usage

### Wearing the Watch

Sadly we don't live in an ideal world where your GPS is working, or not working. GPS errors can vary by orders of magnitude and the presence of numbers on the display does not mean the device is working properly.

How you wear your GPS can significantly impact the accuracy and reliability of the data being recorded, but you can minimise the risk of errors:

- Wear it over your wetsuit (or with the neoprene folded back).
- When speed sailing, wear it on your back hand to ensure it is facing upwards.



### Recording an Activity

Ensure you are always using an appropriate firmware and watch settings. This was described earlier, but just as a recap:

- APEX / VERTIX - avoid 3.0508.0.
- APEX 2 Pro / VERTIX 2 / VERTIX 2S - Avoid 3.0408.0, 3.0409.0, 3.0508.0 and 3.0510.0.
- Ensure you are using multiple systems, not standard GPS.
- Check you have latest GPS data, which makes signal acquisition quicker.

Now to the next thing of importance which is the activity mode. The image below compares an APEX 2 Pro (red) and PACE 3 (green) against a Motion GPS (blue). The terrible accuracy from the watches is entirely due to use of the "custom" activity.

![custom-actity](img/custom-activity.png)

Different activity modes use different types of filtering and smoothing. These are proprietary implementation by the watch manufacturer (i.e. COROS) and this specific example was chosen to illustrate the significance of the activity mode.

Guidance:

- Use the speedsurfing activity for the most accurate speeds from your COROS.
  - Do NOT use the windsurfing activity which is [non-Doppler](https://medium.com/@mikeg888/the-importance-of-doppler-b886b14bb65d) and prone to errors.
- Use the GPS cardio activity on watches such as the APEX, PACE 2 or PACE 3.
  - Do not use a "custom" activity - see example, shown above!




### Additional Tips

To ensure the dial continues to function well:

- Clean under a running tap as described by [COROS](https://support.coros.com/hc/en-us/articles/4407431266836-COROS-Watches-Maintenance-and-Cleaning-Tips).

Handy everyday tips:

- The backlight makes for a handy torch in the middle of the night.
- Find my phone + find my watch can be super-handy!

Additional tips and features:

- Camera control - Insta360 / GoPro.
  - GoPro - COROS help on [control](https://support.coros.com/hc/en-us/articles/4411031553044-How-to-control-GoPro-Cameras) + article by [GoPro](https://gopro.com/en/gb/news/open-gopro-coros).
  - Insta360 - COROS help on [control](https://support.coros.com/hc/en-us/articles/4406181409300-How-to-control-Insta360-from-your-COROS-watch) + [data overlay](https://support.coros.com/hc/en-us/articles/28945366751764-Insta360-Data-Overlay).
- Learn to save your location, just in case you lose something in the sea.
  - This will allow you to return to the spot with a mask + snorkel, or a diver!




## Data Analysis

### Reviewing Results

Ignore max and take 2s with a pinch of salt, compare to 10s / 100m / 250m

- [GPSResults](https://www.gps-speed.com/download_e.html) by Manfred Fuchs
- [GpsarPro](http://gpsactionreplay.free.fr/index.php?menu=2) by Yann Mathet
- [GPS Speedreader](https://github.com/prichterich/GPS-Speedreader/) by Peter Richterich

### Exporting Activities

- FIT vs GPX

![export-fit](img/export-fit.png)

App

![export-app](img/export-app-highlighted.jpg)

Spikes are capped in exports

Warn against converting to GPX with GPSBabel.

### Importing Activities

- Import to suitable platform
  - GP3S using FIT
  - Ignore Strava and SportsTrackLive
    - Don't know about Relive which is also popular

- Waterspeed does not handle COROS GPX properly at this time



## Known Issues

Firmware since May 2024

New record alerts

Run detection

Alphas - watch / app and the actual data

- Temporal delay affecting position vs speed



## Summary

Choose an Airoha watch, set it up properly.

Use speedsurfing, not windsurfing

Be mindful of the pitfalls when exporting and importing sessions. Use FIT.

Known issues - firmware, stats and data

Sail fast, and have fun!
