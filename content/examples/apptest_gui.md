---
title: apptest_gui
slug: apptest-gui
weight: 10
featureimage: https://ncine.github.io/img/apptests/apptest_gui.png
showcase_tags: [ AppTest, Emscripten, Video ]
---

![apptest_gui](/img/apptests/apptest_gui.png)

{{< button-group >}}
{{< button href="/apptests/apptest_gui.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_gui.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

A test showing some bouncing sprites and interfaces to control some parameters.

Based on the enabled integrations and the preferred backend you might see the ImGui, Nuklear, and Qt5 interfaces, even all at once!

{{< alert "circle-info" >}}
This was once called `apptest_scene`
{{< /alert >}}

## Video

{{< youtube id="PpVLD3ShiCw" loading="lazy" title="nCine as a custom Qt5 widget" >}}

## Controls

- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the interfaces
- Pressing `P` on the keyboard, or the left mouse button, or tapping the screen if no interface is available will pause the application
- Pressing `CTRL + H` on the keyboard will show or hide the ImGui and the Nuklear interfaces
- Pressing `Escape` on the keyboard will quit the application
