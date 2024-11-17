## Garmin Developer Tips

### Data Recording

#### Frequency

It is imperative that the data recording frequency is set to "every second" but this is the responsibility of the watch user.

It is recommended that watch apps try to determine the data recording frequency when a speed sailing activity is started.

If the frequency is not every second then the user should be alerted to the fact, so they can rectify it.



#### Fix Quality

The user should be aware of the [fix quality](fix-quality.md) at all times.

- The user should be able to delay the recording until the signal is acquired (i.e. fix quality is good).
- When the signal is first acquired the user should be alerted to the fact; both visually and with a vibration.
- When the signal is lost the user should be alerted to the fact; both visually and with a vibration.
- When the signal is re-acquired the user should be alerted to the fact; both visually and with a vibration.



#### Controls

The following are general recommendations relating to the user interface:

- The user should be able to delay the recording, prior to a GPS [fix quality](fix-quality.md) of good.
- The user should be able to pause and resume sessions when taking a break.
- The user should be given the choice of saving or discarding sessions.
- The button to start / stop / pause / discard should be consistent with other Garmin activities.
