---
layout: page
title: Samples
permalink: /samples/
---

Probably the easiest way to start understading how to use the nCine API is through the sample sources installed alongside the project.

Please refer to the [Build the samples](/build-samples) page for instructions on how to build them on your platform.

The samples are all prefixed with `apptest_`, they open a window, use input and events and they are all linked to a common `ncine_main` static library that implements a `main()` function to set things up.

## List of samples

- `apptest_anchor`:
  A test showing different kind of sprites and let you change their properties with a Dear ImGui UI
- `apptest_animsprites`:
  A test showing an animated sprite walking around the screen that you can control with different input devices
- `apptest_audio`:
  A test playing a sound and a background music and that you can control with the keyboard
- `apptest_camera`:
  A test showing plenty of moving sprites on the screen and with a free camera that you can zoom, pan and rotate with different input devices
- `apptest_font`:
  A test showing various font rendering examples with different settings for kerning, color and typeface
- `apptest_joystick`:
  A test that shows on screen every value for joystick axes and buttons, with an additional visual feedback
- `apptest_lua`:
  A test that shows how the whole game can be implemented with Lua scripts. In this case through `scripts/script.lua`.
- `apptest_luareload`:
  A test showing how to hot-reload a Lua script on the fly.
- `apptest_meshdeform`:
  A test showing the animated deformation of vertices belonging to a mesh sprite.
- `apptest_meshsprites`:
  A test that shows a scene of mesh sprites. The outline of each shape is a transparent mesh sprite while the inside is an opaque one.
- `apptest_multitouch`:
  A test that uses multiple touch pointers to move sprites on the screen. It also shows information about touch events.
- `apptest_particles`:
  A test that shows how to use a particle system. You can move the emitter around with different input devices
- `apptest_rotozoom`:
  A test rendering many rotating sprites on screen with a common dummy parent that is also rotating and zooming
- `apptest_scene`:
  A test rendering some bouncing sprites on screen
- `apptest_simdbench`:
  A benchmark application for SIMD operations that uses Dear ImGui for the UI and Lua for loading and saving.
- `apptest_sinescroller`:
  A small homage to the classic demoscene sine scroller demos. :)
- `apptest_texformats`:
  A test about texture loading and MIP maps. You can change the texture and the MIP level with different input devices

# Understand the basics

## Application events: IAppEventHandler

The entry point of every nCine application is a class that implements the `IAppEventHandler` interface and a function that returns a new object of that type.
The function is called inside the `main()` function and allows the engine to dispatch events about the lifecycle of the application.

The first callback function to be called is `onPreInit()`, it is called with the application configuration as its only parameter, allowing for the user to specify some initialization settings. Be aware that inside this function you cannot invoke any engine API call as the engine is not yet fully initialized.

After that it is the turn of the `onInit()` callback function, which is called once the engine is fully initialized and you can start using it.
At this point the test applications usually load resources (textures, fonts, sounds), retrieve a reference to the root of the scene graph and start populating it with nodes like sprites or particle systems.

Once this last callback returns your application is considered initialized and it will begin to render frames. To update the state of an object in the scenegraph per frame you can use `onFrameStart()` and `onFrameEnd()` functions.

Similarly to the `onInit()` function, there is a callback that is invoked when the user quits the application: the `onShutdown()` function.

# Input events: IInputEventHandler

The class handling the application events is usually also handling input events by implementing the `IInputEventHandler` interface.

There are different types of input events that the handler can listen for: mouse, keyboard, touchscreen, joystick. In order for your application to listen for a particular event just implement the callback function and process the generated event.
