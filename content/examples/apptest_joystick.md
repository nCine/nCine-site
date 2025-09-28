---
title: apptest_joystick
slug: apptest-joystick
weight: 12
featureimage: https://ncine.github.io/img/apptests/apptest_joystick.png
showcase_tags: [ AppTest, Emscripten ]
---

![apptest_joystick](/img/apptests/apptest_joystick.png)

{{< button-group >}}
{{< button href="/apptests/apptest_joystick.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_joystick.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

Gamepad support has always been very important for the nCine and this test shows information about the connected gamepad and visual feedback about its axes, buttons, and hats.

## Controls

Connect a gamepad to see visual feedback about the state of its axes and buttons.

- Press the `Back` button on the gamepad to enable or disable the vibration, if available
- Pressing the left/right trigger when vibration is enabled, will vibrate the left/right motor
- Pressing `Escape` on the keyboard will quit the application
