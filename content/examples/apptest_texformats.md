---
title: apptest_texformats
slug: apptest-texformats
weight: 25
featureimage: https://ncine.github.io/img/apptests/apptest_texformats.png
showcase_tags: [ AppTest, Emscripten ]
---

![apptest_texformats](/img/apptests/apptest_texformats.png)

{{< button-group >}}
{{< button href="/apptests/apptest_texformats.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_texformats.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

This is a test for different texture format loaders, especially for GPU compressed formats (like ASTC, DXT, or ETC), and for container formats (like PVR, KTX, or DDS).

## Controls

- Pressing the left/right or `A`/`D` keys, clicking or touching the screen on the left or right side, moving the left gamepad stick left/right, pressing the D-pad left/right, or using the bumpers will change the texture
- Pressing the up/down or `W`/`S` keys, clicking or touching the screen on the upper or lower side, moving the left gamepad stick up/down will change the MIP level
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the application
