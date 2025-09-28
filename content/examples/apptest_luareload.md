---
title: apptest_luareload
slug: apptest-luareload
weight: 15
featureimage: https://ncine.github.io/img/apptests/apptest_luareload.png
showcase_tags: [ AppTest, Emscripten ]
---

![apptest_luareload](/img/apptests/apptest_luareload.png)

{{< button-group >}}
{{< button href="/apptests/apptest_luareload.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_luareload.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

This test shows you how to pass data between the C++ application and a Lua script with ad-hoc custom tables.

It also shows how to hot-reload a script to update the parameters of your program without recompiling or restarting it.

## Controls

- Pressing the left button and dragging the mouse around will move the particle system
- Pressing `F5` or `5` on the keyboard will reload the same script with a different parameter that will result in different particle colors
- Pressing `Escape` on the keyboard will quit the application
