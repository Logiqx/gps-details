## GPS Articles

### What to make of max speeds?

This article is primarily aimed at windsurfers, kitesurfers and wingfoilers but it will apply to some other sports as well.

The most natural instinct when sailing with a GPS is to look at the highest number being reported and take it at face value. Sure, most people will be aware that errors can occur after a crash and that some devices are more accurate than others. However, I think far fewer people are truly aware of what the max speed really represents when devices are working correctly and why it should probably be ignored.

Speed sailing is one of my favorite disciplines on the water, constantly striving to achieve the highest speeds possible. However, I stopped paying any attention to max speeds from my GPS many, many years ago. It's even more relevant nowadays with adoption of high frequency loggers such as the Motion and ESP, but also the older 5 Hz devices from the likes of Locosys and even some of the 1 Hz devices on the market.

Hopefully this article will help to illustrate why you should probably ignore max speeds and focus on other figures instead. The max 2 seconds is a decent estimate of your actual max speed if that's what you want to know, but "max speed" itself can be very misleading. There is an example later in this article,  showing how the reported max speed can be a couple of knots too high, even when the GPS is working well.



#### Dynamics of Walking

The graph below is data captured from a Motion Mini GPS worn on my wrist. I actually had one on each wrist and a third on my cap when this was recorded, but for simplicity I've only shown one device. Whilst the action of walking doesn't resemble speed sailing, it does show just how sensitive these devices can be to things like arm movements.

During the first 20 seconds my arms were held in front of me and kept as still as possible. My average speed during these 20 seconds was 5.8 km/h but the reported speed varied between 4.7 and 6.7 km/h. Whether this range of speeds are truly accurate is not so important right now, but they do provide a baseline for my walking speed.

The remainder of the data shows the effect of swinging my arms in a way that was natural at that walking pace. The average speed of 6.1 km/h was a little faster but it's important to note that the speeds being recorded were in the range 0.2 km/h to 11.9 km/h. Further analysis suggests that these high + low speeds are probably realistic, but it clearly wouldn't make sense to claim that my max walking speed is 12 km/h.

High frequency GPS / GNSS loggers are essentially calculating speeds over short periods of time (essentially 10s of milliseconds) which means they are very sensitive to movement. These individual readings which pertain to very short periods of time are therefore not representative of my overall walking speed. Later on in this article, we'll also see how this sensitivity applies to wind sports.

![walk](img/1-walk.png)

#### Wingfoiling

We will now look at some real wingfoiling data, recorded during Weymouth Speed Week 2023. The graph below shows the best 500 metre run of one of the faster riders, recorded at 5 Hz on a Motion Mini. The y-axis has been chosen to emphasize the noise and pose the question of the actual max speed, which must have been lower than the raw value of 31.46 knots.


![wing-1](img/3a-wing.png)

Applying a [Savitzky–Golay](https://en.wikipedia.org/wiki/Savitzky%E2%80%93Golay_filter) filter provides a reasonably good estimate of the likely max speed during this particular run. The max speed according to the Savitzky–Golay filter is 30.97 knots, which is half a knot lower than the max of 31.46 knots. That's not a huge difference but differences of half a knot are fairly typical when looking at data from the Motion; e.g. "max speed" vs "max 2 seconds".


![wing-1-savgol](img/3a-wing-0-savgol.png)

Calculating a 2 second moving average is probably the simplest way of handling this type of data. The graph below shows that despite the simplicity of a moving average the results are very similar to the Savitzky–Golay filter and the max 2s is reported as 30.98 knots. The speed sailing world have been using the "max 2 seconds" as a proxy for max speed since the early 2000s, although it was originally for reasons relating to the devices of the era.


![wing-1-2s](img/3a-wing-2s.png)


#### Noise vs Outliers

The previous run was chosen to illustrate how noise is always present in GPS data. The noise is not necessarily random and in many instances it will be due to genuine movements of the GPS receiver, but they don't necessarily represent changes in board speed. The graph below shows the second fastest run of the same rider during speed week but this time the run includes clear outliers; appearing roughly 22 seconds into the run.

It's impossible to know for sure, but these outliers could easily have been due to sudden arm movements whilst maintaining control of the wing. The rider definitely wasn't yoyo-ing between 30 knots and 32 knots at 0.2 second intervals. Such a change in speed is pretty implausible, so sudden arm movements are probably the most likely explanation. The "max speed" in the unfiltered data is 32.37 knots but it's clearly just an outlier.

![wing-2](img/3b-wing.png)

The Savitzky–Golay filter produces a max speed of 30.44 knots, which is 2 knots slower than the unfiltered "max speed" of 32.37 knots. Such large outliers are not uncommon from GPS loggers, yet few people seem to question their validity. It's also worth noting that these outliers can still have an effect on the filtered speeds, and the actual top speed may have been as low as 30.1 knots.

![wing-2-savgol](img/3b-wing-0-savgol.png)

The simpler approach of using a 2 second moving average is also effective for this run. The results below are not quite as smooth as the Savitzky–Golay filter, but they are quite similar and produce a near identical max of 30.46 knots. Hopefully it's clear from this example that it would be wrong to claim a top speed of 32.37 knots when the likely truth is 2 knots slower. The "max 2 seconds" of 30.46 may be a little too high, but likely to be close to the truth.

![wing-2-2s](img/3b-wing-2s.png)

#### Affected Devices

So far this article has focused on the Motion GPS which is particularly popular amongst pro riders. It is the best device you can have for speed sailing, but the [ESP-GPS](https://github.com/RP6conrad/ESP-GPS-Logger) is also excellent if you fancy a DIY project. The main takeaway should be to ignore the "max speed" and regard the "max 2 seconds" as your top speed. The same applies to the Locosys GW-52 and GW-60, which both capture a fair amount of noise when logging at 5 Hz.

Numerous 1 Hz devices actually do calculations at 10 Hz (or more) internally, but only log at 1 Hz. These devices also have the potential to output excessively high speeds (e.g. 12 km/h when walking) so "max speed" should always be ignored. Unfortunately, due to logging at 1 Hz the "max 2 seconds" may also be too high. The latest COROS watches are perhaps less likely to output speeds that are significantly too high, due to their built in filtering.



#### Takeaways

The best measure of your top speed is "max 2 seconds", regardless of the device. However, I've not even discussed the potential for "max 2 seconds" to be wrong due to reception issues (e.g. due to a crash, or immersion), or how some devices are prone to excessively high readings. I'll also share a relatively effective sanity check of "max 2 seconds" which is to check that it is within a knot of the best 100 metres (5 seconds at 40 knots).

Here are a few closing thoughts:

- When it comes to personal records, and competing against your mates then "max 2 seconds" is the best measure of top speed. Focusing on maintaining speed (10 seconds, 250 metres and 500 metres) may be a better measure of skill though.

- If you run a simple GPS ladder at your club then you should avoid "max speed" and might consider 10s (150 metres at 30 knots) or 250m. The Locosys devices (GT-31, GW-52, GW-60) all support 10 seconds, and so do many watches; including COROS and Garmin.

- If you are telling someone how fast you were sailing during a session, or when racing professionally then you should ignore what your device calls "max speed" and focus instead on "max 2 seconds", "max 10 seconds", 250 metres, or 500 metres.



I hope this has been useful and wish you good luck in your speed sailing!



Mike George - K888

