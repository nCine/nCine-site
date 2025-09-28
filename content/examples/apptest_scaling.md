---
title: apptest_scaling
slug: apptest-scaling
weight: 21
featureimage: https://ncine.github.io/img/apptests/apptest_scaling.png
showcase_tags: [ AppTest, Emscripten ]
---

![apptest_scaling](/img/apptests/apptest_scaling.png)

{{< button-group >}}
{{< button href="/apptests/apptest_scaling.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_scaling.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

A test showing nCine support for the window scale factor of a monitor.

You can drag around the window on a monitor with a different scale factor to see it automatically resized.

## Controls

- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Pressing `1`, `2`, `3`, or `4` will center the window on the first, second, third or fourth monitor
- Pressing `5`, `6`, `7`, or `8` will go full screen on the first, second, third or fourth monitor
- Pressing `CTRL + H` on the keyboard will show or hide the ImGui interfaces
- Pressing `F` on the keyboard will toggle full screen
- Pressing `Escape` on the keyboard will quit the application
