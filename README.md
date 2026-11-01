# LightsOut

Toggle dark mode / night shift with the light sensor.

Fork of [Skittyblock/LightsOut](https://github.com/Skittyblock/LightsOut).

## Changes in this fork

- Dark mode and night shift only switch after the ambient light sensor reports the same side of the threshold for several consecutive readings (`consecutiveChecks`, default 3). Readings that fall between the upper and lower threshold reset the counter, so brief flickers and passing shadows no longer toggle the display.
- The counter is exposed in Settings as **Consecutive Checks** (1–10).
- Builds with theos on Linux: `osversion.m` provides the availability runtime symbol that the Linux iOS toolchain does not ship, and `prefs/UIWindowSceneCompat.h` backports the iOS 15 `UIWindowScene.keyWindow` declaration so the preference bundle compiles against the iOS 13.7 SDK.

## Build

```sh
export THEOS=~/theos
make package FINALPACKAGE=1
```

Resulting package: `packages/xyz.skitty.lightsout_1.2_iphoneos-arm.deb`.
