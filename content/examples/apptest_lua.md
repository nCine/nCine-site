---
title: apptest_lua
slug: apptest-lua
weight: 14
featureimage: https://ncine.github.io/img/apptests/apptest_lua.png
showcase_tags: [ AppTest, Emscripten ]
---

![apptest_lua](/img/apptests/apptest_lua.png)

{{< button-group >}}
{{< button href="/apptests/apptest_lua.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_lua.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

By default, this test will load the example `script.lua` but you can supply another script as the first parameter when launching it on the command line.

When running on a platform with writable files, the loaded script can be edited, reloaded, and executed again with the changes.

## Controls

- Press the left or the right mouse buttons to set the positions of the sprites
- Press `V` to toggle the screen blur using viewports and custom shaders
- Press the `Back` button on the gamepad to enable or disable the vibration, if available
- Pressing the left/right trigger when vibration is enabled, will vibrate the left/right motor
- Pressing `F` on the keyboard will toggle full screen
- Pressing `F5` or `5` on the keyboard will reload the same script
- Pressing `CTRL + H` on the keyboard will show or hide the ImGui interface
- Pressing `P` on the keyboard or `Start` on the gamepad will pause the application
- Pressing `Escape` on the keyboard will quit the application
