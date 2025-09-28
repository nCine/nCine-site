---
title: apptest_meshdeform
slug: apptest-meshdeform
weight: 16
featureimage: https://ncine.github.io/img/apptests/apptest_meshdeform.png
showcase_tags: [ AppTest, Emscripten ]
---

![apptest_meshdeform](/img/apptests/apptest_meshdeform.png)

{{< button-group >}}
{{< button href="/apptests/apptest_meshdeform.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_meshdeform.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

This test shows one big `MeshSprite` object being deformed and animated.

You can choose between three types of deformations and three different animations, or deform it freely with the mouse, the touch, or the gamepad.

## Controls

- Pressing `A` or the left arrow on the keyboard, clicking or tapping the left half of the screen, or pressing the left gamepad bumper will change the deformation
- Pressing `D` or the right arrow on the keyboard, clicking or tapping the right half of the screen, or pressing the right gamepad bumper will change the animation
- Pressing `B` on the keyboard or `A` on the gamepad will toggle batching
- Pressing `C` on the keyboard or `B` on the gamepad will toggle culling
- Pressing `P` on the keyboard or `Start` on the gamepad will pause the application
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the application
