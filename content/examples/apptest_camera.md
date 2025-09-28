---
title: apptest_camera
slug: apptest-camera
weight: 6
featureimage: https://ncine.github.io/img/apptests/apptest_camera.png
showcase_tags: [ AppTest, Emscripten, Video ]
---

![apptest_camera](/img/apptests/apptest_camera.png)

{{< button-group >}}
{{< button href="/apptests/apptest_camera.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_camera.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

This is the default test that will run if you debug with Visual Studio, if you double-click the macOS bundle, or if you build an Android APK.

It shows some sprites randomly moving while you can move the camera around.
The camera used to be simulated by moving the sprites in the opposite direction of the input but it now supports the `Viewport` and `Camera` classes

## Videos

- {{< youtube id="lPMd8fI99gI" loading="lazy" title="Node inspector in the debug overlay interface" >}}
- {{< youtube id="PQRnxeBpo-c" loading="lazy" title="nCine debug overlay" >}}

## Controls

- Pressing `W`/`A`/`S`/`D`, dragging while pressing the left mouse button, touching with one finger, or moving the left gamepad stick will pan the camera
- Pressing the left/right arrow keys, dragging horizontally while pressing the right mouse button or touching with two fingers, or moving the right gamepad stick left/right will rotate the camera
- Pressing the up/down arrow keys, dragging vertically while pressing the right mouse button or touching with two fingers, or moving the right gamepad stick up/down will zoom the camera
- Scrolling the mouse wheel will also zoom the camera
- Pressing `T` on the keyboard or `X` on the gamepad will toggle between individual textures and a texture atlas (more chances for batching)
- Pressing `V` on the keyboard or the right bumper on the gamepad will toggle between simulating a camera by moving sprites in the opposite direction or using a `Viewport` and a `Camera` objects
- Pressing `R` on the keyboard, `Y` on the gamepad, or double-clicking/double-tapping will reset the camera position, rotation, and scale
- Pressing `B` on the keyboard or `A` on the gamepad will toggle batching
- Pressing `C` on the keyboard or `B` on the gamepad will toggle culling
- Pressing `F` on the keyboard will toggle full screen
- Pressing `P` on the keyboard or `Start` on the gamepad will pause the application
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the application
