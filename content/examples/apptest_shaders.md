---
title: apptest_shaders
slug: apptest-shaders
weight: 22
featureimage: https://ncine.github.io/img/apptests/apptest_shaders.png
showcase_tags: [ AppTest, Emscripten, Video ]
---

![apptest_shaders](/img/apptests/apptest_shaders.png)

{{< button-group >}}
{{< button href="/apptests/apptest_shaders.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_shaders.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

A test that shows the custom shaders API and how to do post-processing with viewports.
You will see regular sprites, mesh sprites, and some multi-textured normal mapped sprites, all using custom shaders and with batching!

The ImGui interface will allow you to tweak the lighting parameters for normal mapped sprites and change the post-processing between bloom (using multiple render targets and downsampling) and a separable Gaussian blur.

## Video

{{< youtube id="T1XRrK77u6M" loading="lazy" title="nCine Custom Shaders Test" >}}

## Controls

- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Dragging the mouse while pressing the left button, touching with one finger, or moving the left gamepad stick will move the light
- Pressing `B` on the keyboard or `A` on the gamepad will toggle batching
- Pressing `C` on the keyboard or `B` on the gamepad will toggle culling
- Pressing `T` on the keyboard or `X` on the gamepad will toggle between individual textures and a texture atlas (more chances for batching)
- Pressing `Y` on the gamepad will reset the light position to the center of the screen
- Pressing `R` on the keyboard will toggle between the original and the custom shader for regular and mesh sprites
- Pressing `V` on the keyboard will toggle between different no post-processing and blur
- Pressing `L` on the keyboard will toggle between different no post-processing and bloom
- Pressing the right bumper on the gamepad will cycle between no post-processing, blur, and bloom
- Pressing `1`, `2`, or `3` will change the number of blur passes in post-processing
- Pressing `CTRL + H` on the keyboard will show or hide the ImGui interface
- Pressing `F` on the keyboard will toggle full screen
- Pressing `P` on the keyboard or `Start` on the gamepad will pause the application
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the application
