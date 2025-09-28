---
title: glapptest_fbo_cube
slug: glapptest-fbo-cube
weight: 27
featureimage: https://ncine.github.io/img/apptests/glapptest_fbo_cube.png
showcase_tags: [ AppTest, Emscripten ]
---

![glapptest_fbo_cube](/img/apptests/glapptest_fbo_cube.png)

{{< button-group >}}
{{< button href="/apptests/glapptest_fbo_cube.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/src/tests/glapptest_fbo_cube.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

This test is only available when the nCine is built as a static library and it uses the OpenGL API layer directly, bypassing the scenegraph and the sprite systems.

## Controls

- Pressing the left bumper on the gamepad, or the left mouse button, or tapping the screen with one finger will pause the triangle animation
- Pressing the right bumper on the gamepad, or the right mouse button, or tapping the screen with two fingers will pause the cube animation
- Pressing `F` on the keyboard will toggle full screen
- Pressing `P` on the keyboard or `Start` on the gamepad will pause both the triangle and the cube animations
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the application
