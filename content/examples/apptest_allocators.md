---
title: apptest_allocators
slug: apptest-allocators
weight: 1
featureimage: https://ncine.github.io/img/apptests/apptest_allocators.png
showcase_tags: [ AppTest, Emscripten, Video ]
---

![apptest_allocators](/img/apptests/apptest_allocators.png)

{{< button-group >}}
{{< button href="/apptests/apptest_allocators.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_allocators.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

This is a test for the various custom allocators available when compiling with the `NCINE_WITH_ALLOCATORS=ON` CMake option.

The ImGui interface will allow you to create different types of allocators and to allocate and free memory blocks of different sizes and alignment requirements.

## Videos

{{< youtube id="2kAoyVvgLyo" loading="lazy" title="nCine Custom Memory Allocators Test" >}}

## Controls

- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Pressing `Escape` on the keyboard will quit the application
