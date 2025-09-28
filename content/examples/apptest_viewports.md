---
title: apptest_viewports
slug: apptest-viewports
weight: 26
featureimage: https://ncine.github.io/img/apptests/apptest_viewports.png
showcase_tags: [ AppTest, Emscripten ]
---

![apptest_viewports](/img/apptests/apptest_viewports.png)

{{< button-group >}}
{{< button href="/apptests/apptest_viewports.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_viewports.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

This is a test for the `Viewport` and `Camera` classes. It shows multiple viewports arranged in a vertical split screen and with picture-in-picture.

You can tweak both the viewport and the camera parameters with an ImGui interface.

## Controls

- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Pressing `W`/`A`/`S`/`D`, dragging while pressing the left mouse button, touching with one finger, or moving the left gamepad stick will pan the camera
- Pressing the left/right arrow keys, dragging horizontally while pressing the right mouse button or touching with two fingers, or moving the right gamepad stick left/right will rotate the camera
- Pressing the up/down arrow keys, dragging vertically while pressing the right mouse button or touching with two fingers, or moving the right gamepad stick up/down will zoom the camera
- Scrolling the mouse wheel will also zoom the camera
- Pressing `R` or double-clicking will reset the camera position, rotation, and scale
- Pressing `B` on the keyboard will toggle batching
- Pressing `C` on the keyboard will toggle culling
- Pressing `I` on the keyboard will enable or disable the mouse input
- Pressing `CTRL + H` on the keyboard will show or hide the ImGui interface
- Pressing `F` on the keyboard will toggle full screen
- Pressing `P` will pause the application
- Pressing `Escape` on the keyboard will quit the application
