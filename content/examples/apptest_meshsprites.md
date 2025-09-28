---
title: apptest_meshsprites
slug: apptest-meshsprites
weight: 17
featureimage: https://ncine.github.io/img/apptests/apptest_meshsprites.png
showcase_tags: [ AppTest, Emscripten ]
---

![apptest_meshsprites](/img/apptests/apptest_meshsprites.png)

{{< button-group >}}
{{< button href="/apptests/apptest_meshsprites.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_meshsprites.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

The test shows the same scene using regular `Sprite` objects with blending, or with `MeshSprite` objects composed of an inner opaque part and a transparent border.

## Controls

- Pressing `B` on the keyboard or `A` on the gamepad will toggle batching
- Pressing `C` on the keyboard or `B` on the gamepad will toggle culling
- Pressing `T` on the keyboard or `X` on the gamepad will toggle between individual textures and a texture atlas (more chances for batching)
- Pressing `V` on the keyboard or the right bumper on the gamepad will toggle between simulating a camera by moving sprites in the opposite direction or using a `Viewport` and a `Camera` objects
- Pressing `M` on the keyboard or the left bumper on the gamepad will toggle between using `Sprite` or `MeshSprite` objects
- Pressing `P` on the keyboard or `Start` on the gamepad will pause the application
- Pressing `1`, `2`, `3`, `4`, or `8` will progressively animate fewer sprites
- Pressing `R` on the keyboard or `Y` on the gamepad, or double-clicking or double-tapping will reset the camera zoom
- Pressing `F` on the keyboard will toggle full screen
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the application
