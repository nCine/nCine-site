---
title: apptest_particles
slug: apptest-particles
weight: 19
featureimage: https://ncine.github.io/img/apptests/apptest_particles.png
showcase_tags: [ AppTest, Emscripten ]
---

![apptest_particles](/img/apptests/apptest_particles.png)

{{< button-group >}}
{{< button href="/apptests/apptest_particles.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_particles.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

A test that shows a particle emitter with some preset affectors and emitting particles.

If the nCine has been compiled with ImGui some options can be tweaked with an interface.

## Controls

- Pressing `W`/`A`/`S`/`D`, dragging while pressing the left mouse button, touching with one finger, or moving the left gamepad stick will move the particle emitter
- Pressing the arrow keys, dragging while pressing the right mouse button, touching with two fingers, or moving the right gamepad stick will move the emission direction
- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Pressing `CTRL + H` on the keyboard or `Back` on the gamepad will show or hide the ImGui interface
- Pressing `Escape` on the keyboard will quit the application
