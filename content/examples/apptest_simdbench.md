---
title: apptest_simdbench
slug: apptest-simdbench
weight: 23
featureimage: https://ncine.github.io/img/apptests/apptest_simdbench.png
showcase_tags: [ AppTest, Emscripten ]
---

![apptest_simdbench](/img/apptests/apptest_simdbench.png)

{{< button-group >}}
{{< button href="/apptests/apptest_simdbench.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_simdbench.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

This test was made while researching Intel and ARM Neon SIMD intrinsics and their performance.

The branch with intrinsics was not merged back as auto-vectorization seemed fast enough, while this benchmark was added to the rest of the tests.

## Controls

- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Pressing `Escape` on the keyboard will quit the application
