---
title: apptest_rotozoom
slug: apptest-rotozoom
weight: 20
featureimage: https://ncine.github.io/img/apptests/apptest_rotozoom.png
showcase_tags: [ AppTest, Emscripten ]
---

![apptest_rotozoom](/img/apptests/apptest_rotozoom.png)

{{< button-group >}}
{{< button href="/apptests/apptest_rotozoom.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_rotozoom.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

A very simple test showing a bunch of sprites rotating, zooming, and moving around while maintaining a square formation.

## Controls

- Pressing `B` on the keyboard or `A` on the gamepad will toggle batching
- Pressing `C` on the keyboard or `B` on the gamepad will toggle culling
- Pressing the left bumper on the gamepad, or the left mouse button, or tapping the screen with one finger will pause sprites rotation
- Pressing the right bumper on the gamepad, or the right mouse button, or tapping the screen with two fingers will pause the square sprites formation
- Pressing `F` on the keyboard will toggle full screen
- Pressing `P` on the keyboard or `Start` on the gamepad will pause both the sprite rotation and the square formation
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the application
