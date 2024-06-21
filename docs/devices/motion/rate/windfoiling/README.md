## Motion Mini - Rate Investigation

### Windfoiling Tests

#### Overview

The windfoiling tests are intended to provide insight into the capture of changes to acceleration and deceleration (aka jerk), due to pumping and other factors. The test session was on a day with very light winds, so there was a lot of pumping required to get up onto the foil.

The purpose of this particular test was to determine if there is any difference in behavior between motions logging at 1 / 5 / 10 Hz. It is clear from the data that there are insights to be gleaned from the 5 Hz and 10 Hz data, not relating to board speed per-se but including things like arm motion.



#### Warm Up

Prior to testing the motions were not given a full 15 minute warm up, but probably just about enough time to acquire the ephemerides which take between 12 and 12.5 minutes to be received in full.



#### Data

All of the data is available for download in OAO format:

- [2024-06-19-windfoil.rar](2024-06-19-windfoil.rar) - older motions logging @ 1 / 5 / 10 Hz



#### Testing

Testing on 19 June used the newer older mini motions, logging at 1 / 5 / 10 Hz.

The last digit of the serial numbers indicates the logging rates and the motions.

Three motions were worn on each arm. Left arm:

![left arm](img/20240619_092343.jpg)

Right arm:

![right arm](img/20240619_092354.jpg)





Viewing the 1 / 5 / 10 Hz data of the left arm in GPS Speedreader it can be seen that the 5 Hz and 10 Hz data contain details not present in the 1 Hz data:

![left-arm](img/left-arm.png)

The 1 Hz data does a pretty good job of showing what may well be the board speed, but it does not contain the pumping details.

Comparing the 5 Hz and 10 Hz data from both arms shows a strong correlation between the devices on the same arm. For example, blue (10 Hz) + red (5 Hz) on left arm, and green  (10 Hz) / magenta ( 5 Hz) on right arm:

![both-arms](img/both-arms.png)

It is quite subtle but beneath the dialog box, blue + red are varying in speed by more than green and magenta:

![zoom](img/zoom.png)



This leads me to believe that the motion being captured is real and that even the difference between each arm when pumping is picked up.

When looking at this same period for just the left arm, it can be seen that the 5 Hz and 10 Hz data are recording details that are absent in the 1 Hz data.

![left-arm-2](img/left-arm-2.png)

The 1 Hz data well may be an accurate depiction of the board speed, and thus be suitable for speed sailing. There is however a risk that aliasing may occur when pumping at a specific frequency, much akin to the artefacts seen when swinging the arms during a walk.

If you want to record accurate speed data for jerky motion, then you must choose a suitable logging frequency.

Since the 5 Hz and 10 Hz data tell the same story and somewhat immune to the aliasing seen when walking, it therefore makes sense to choose a higher logging rate such as 5 Hz, IMHO.



My original working notes were as follows:

- 10 Hz and 5 Hz show a similar picture, telling me it is probably not completely noise.
- 10 Hz will however contain more noise than 5 Hz.
- 1 Hz is missing the details of pumping, but is that important?
  - Need to consider the possibility of aliasing under specific circumstances.

- Ignore individual "max" speeds in 5 Hz and 10 Hz data as they are definitely prone to genuine noise.
  - Look at 09:09:09 for extreme changes in 5 Hz data - repeatedly >2 knots change in 0.2 seconds.
    - This does not represent a change in board speed, just an arm movement during pumping!



#### Conclusions

The basic conclusions are as follows:

- If you want to record accurate speed data for jerky motion, then you must choose a suitable logging frequency.
- 5 Hz appears to work well for windsurfing and windfoiling and will faithfully record arm movements .
- 5 Hz and 10 Hz will include arm movements / pumping and are also susceptible to noise, which was evident during the static testing.
- Individual readings that call themselves "max" speed should not be taken literally, but max 2s is probably a good proxy of the true vMax.



#### Todo

Another tests session might look to do the following:

- Wear 1 / 2 / 5 Hz devices on arms to see if 2 Hz device is also missing the details shown by 5 / 10 Hz devices.
- Attach 10 Hz devices to the back footstraps, to determine how much of the detail from 5 / 10 Hz is arm movement.
