---
layout: page
title: Web Tests
permalink: /web-tests/
---

This page lists some of the tools, applications, and tests developed with the nCine. Most of them are available on the web using [Emscripten](https://emscripten.org/).

### SpookyGhost ([web version](/spookyghost))

![SpookyGhost](/img/gallery/SpookyGhost.png "SpookyGhost"){: .center-block :}

**SpookyGhost** is a cross-platform open-source procedural animation tool for sprites.
You can read more about it on its [website](https://encelo.itch.io/spookyghost).

**Video**: [How I animate pixel trees using SpookyGhost](https://www.youtube.com/watch?v=PqrigZ-3JoM)<br/>
**Controls**: Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface.
The ImGui menu items will show their keyboard shortcuts. More information is in the [documentation](https://spookyghost2d.github.io/docs/).

### ncJump ([web version](https://www.antoniocaggiano.eu/ncJump-artifacts))

![ncJump](/img/gallery/ncJump.png "ncJump"){: .center-block :}

**ncJump** is a platform game built with the nCine by [Fahien](https://github.com/Fahien), with an ImGui level editor and using Box2D for the physics.

**Video**: [ncJump running on the Steam Deck](https://www.youtube.com/watch?v=ZKdDtJiIUdo)<br/>
**Devlogs**: [NcJump: a jumping project](https://github.com/nCine/nCine/discussions/)<br/>
**Controls**:
- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Pressing `W`/`A`/`S`/`D` on the keyboard, or moving the left gamepad stick will move the character
- Pressing `Space` on the keyboard or `A` on the gamepad will make the character jump
- Pressing `CTRL + Q` on the keyboard will quit the game

### ncJugiMapGuiDemo ([web version](/ncjugimap_guidemo))

![ncJugiMapGuiDemo](/img/gallery/ncJugiMapGuiDemo.png "ncJugiMapGuiDemo"){: .center-block :}

**ncJugiMapGuiDemo** is the fourth of four framework demos of the [JugiMap](http://jugimap.com/) map editor.
It shows the custom GUI toolkit of JugiMap in action.

**Video**: [ncJugiMapGuiDemo](https://www.youtube.com/watch?v=XczWtdoh4kE)<br/>
**Controls**: Use the mouse or the touch screen to interact with the interface.

### ncJugiMapSpriteTimelineAnimation ([web version](/ncjugimap_spritetimelineanimation))

![ncJugiMapSpriteTimelineAnimation](/img/gallery/ncJugiMapSpriteTimelineAnimation.png "ncJugiMapSpriteTimelineAnimation"){: .center-block :}

**ncJugiMapSpriteTimelineAnimation** is the third of four framework demos of the [JugiMap](http://jugimap.com/) map editor.
It shows the camera moving around in a level while different objects and props are animated.

**Video**: [ncJugiMapSpriteTimelineAnimation](https://www.youtube.com/watch?v=rjMSLY5pl7A)<br/>
**Controls**: Pressing the left mouse button or touching the screen will temporarily pause the camera movement.

### ncJugiMapParallaxScrolling ([web version](/ncjugimap_parallaxscrolling))

![ncJugiMapParallaxScrolling](/img/gallery/ncJugiMapParallaxScrolling.png "ncJugiMapParallaxScrolling"){: .center-block :}

**ncJugiMapParallaxScrolling** is the second of four framework demos of the [JugiMap](http://jugimap.com/) map editor.
It shows the camera moving horizontally on a background made of multiple layers with parallax scrolling.

**Video**: [ncJugiMapParallaxScrolling](https://www.youtube.com/watch?v=0gfgShTNvSw)<br/>
**Controls**: Pressing the left mouse button or touching the screen will temporarily pause the camera movement.

### ncJugiMapFrameworkDemo ([web version](/ncjugimap_frameworkdemo))

![ncJugiMapFrameworkDemo](/img/gallery/ncJugiMapFrameworkDemo.png "ncJugiMapFrameworkDemo"){: .center-block :}

**ncJugiMapFrameworkDemo** is the first of four framework demos of the [JugiMap](http://jugimap.com/) map editor.
It shows sprites walking in a level while the camera moves around.

**Video**: [ncJugiMapFrameworkDemo](https://www.youtube.com/watch?v=3TBFN3VwXZ4)<br/>
**Controls**: Use the mouse or the touch screen to interact with the interface.

### ncTiledViewer ([web version](/nctiledviewer))

![ncTiledViewer](/img/gallery/ncTiledViewer.png "ncTiledViewer"){: .center-block :}

**ncTiledViewer** is a viewer for some of the map types that you can create with [Tiled](https://www.mapeditor.org/).

**Controls**:
- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Pressing `B` on the keyboard or `A` on the gamepad will toggle batching
- Pressing `C` on the keyboard or `B` on the gamepad will toggle culling
- Pressing `H` on the keyboard or `Start` on the gamepad will hide or show the ImGui interface
- Pressing `Escape` on the keyboard will close the file dialog window
- Pressing `CTRL + Q` on the keyboard or `Guide` on the gamepad will quit the application

### ncParticleEditor ([web version](/ncparticleeditor))

![ncParticleEditor](/img/gallery/ncParticleEditor.png "ncParticleEditor"){: .center-block :}

**ncParticleEditor** is a particle editor with an ImGui interface that uses the nCine particle emitter API for its effects.

**Controls**: Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface.
The ImGui menu items will show their keyboard shortcuts. Pressing `CTRL + Q` on the keyboard will quit the application.

### ncTracer ([web version](/nctracer))

![ncTracer](/img/gallery/ncTracer.png "ncTracer"){: .center-block :}

**ncTracer** is an ImGui interface for the [Poor Man's Tracer](https://github.com/encelo/pmTracer), a very simple and minimal ray tracing and path tracing library.

**Controls**: Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface.
Pressing `Escape` on the keyboard will quit the application.

### ncInvaders ([web version](/ncinvaders))

![ncInvaders](/img/gallery/ncInvaders.png "ncInvaders"){: .center-block :}

**ncInvaders** is a simplified Space Invaders clone made with the nCine as an example game.

**Video**: [ncInvaders - a simplified version of Space Invaders made with the nCine](https://www.youtube.com/watch?v=31k4adykiNA)<br/>
**Controls**:
- Pressing the left/right arrow keys, clicking or touching the screen on the left or right side, or moving the left gamepad stick left/right will move the spaceship
- Pressing `Space` on the keyboard, or the `A` button on the gamepad, or clicking or touching the center of the screen will make the spaceship fire a rocket
- Pressing `R` on the keyboard or `Start` on the gamepad will reset the game
- Pressing `P` on the keyboard or `Back` on the gamepad will toggle the pause
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the game

### ncPong ([web version](/ncpong))

![ncPong](/img/gallery/ncPong.png "ncPong"){: .center-block :}

**ncPong** is a minimal Pong clone made with the nCine as an example game.

**Video**: [ncPong - an example game made with the nCine](https://www.youtube.com/watch?v=5lSYZtRQhgQ)<br/>
**Controls**:
- Pressing the up/down or `W`/`S` keys, clicking or touching the screen, or moving the left gamepad stick up/down will move the paddle
- Pressing `R` on the keyboard or `Start` on the gamepad will reset the game
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the game

### apptest_allocators ([web version](/apptests/apptest_allocators.html))

![apptest_allocators](/img/apptests/apptest_allocators.png "apptest_allocators"){: .center-block :}

This is a test for the various custom allocators available when compiling with the `NCINE_WITH_ALLOCATORS=ON` CMake option.
The ImGui interface will allow you to create different types of allocators and to allocate and free memory blocks of different sizes and alignment requirements.

**Video**: [nCine Custom Memory Allocators Test](https://www.youtube.com/watch?v=2kAoyVvgLyo)<br/>
**Controls**: Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface.
Pressing `Escape` on the keyboard will quit the application.

### apptest_anchor ([web version](/apptests/apptest_anchor.html))

![apptest_anchor](/img/apptests/apptest_anchor.png "apptest_anchor"){: .center-block :}

This test shows how different scene nodes (sprites, text nodes, and particles) are transformed when you change their anchor point.<br/>
It has evolved to show other advanced features like blending and layer ordering options.

**Video**: [apptest_anchor - a nCine example about advanced sprite features](https://www.youtube.com/watch?v=5g30K6ktEc8)<br/>
**Controls**:
- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Pressing `CTRL + H` on the keyboard will show or hide the ImGui interface
- Pressing `Escape` on the keyboard will quit the application

### apptest_animsprites ([web version](/apptests/apptest_animsprites.html))

![apptest_animsprites](/img/apptests/apptest_animsprites.png "apptest_animsprites"){: .center-block :}

One of the oldest and simplest tests, it shows how to make a sprite walk using a spritesheet and an `AnimatedSprite` class.

**Controls**: Use the mouse, the joystick, or the touchscreen to move the sprite around.<br />
Pressing `Escape` on the keyboard will quit the application.

### apptest_audio ([web version](/apptests/apptest_audio.html))

![apptest_audio](/img/apptests/apptest_audio.png "apptest_audio"){: .center-block :}

This test shows how to play sound effects with an `AudioBufferPlayer`, and how to play music using an `AudioStreamPlayer`.
It also allows you to play and pause the music or the sound and to change some properties.
If the nCine has been compiled with ImGui some of those properties can be tweaked with an interface.

**Controls**:
- Pressing `M` on the keyboard or `A` on the gamepad will play or pause the music
- Pressing `Space` on the keyboard or `B` on the gamepad will play or pause the sound
- Pressing `A`/`S`/`D` will play/stop/pause the sound
- Pressing `L` will toggle sound looping

Change the pitch, gain, and horizontal position of the sound with the numeric keypad or the gamepad:
- Pressing `KP7`/`KP8`/`KP9` will decrease/reset/increase the pitch (use the right trigger on the gamepad)
- Pressing `KP4`/`KP5`/`KP6` will decrease/reset/increase the gain (use the left trigger on the gamepad
- Pressing `KP1`/`KP2`/`KP3` will decrease/reset/increase the horizontal position (use the left stick on the gamepad)
- Pressing `KP0` on the keyboard or `Y` on the gamepad will reset all properties to their default values

- Pressing the left/right arrow keys or D-pad directions, or the left bumper will change the music file
- Pressing the up/down arrow keys or D-pad directions, or the right bumper will change the sound file
- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface.
- Pressing `CTRL + H` on the keyboard will show or hide the ImGui interface
- Pressing `Escape` on the keyboard will quit the application

### apptest_camera ([web version](/apptests/apptest_camera.html))

![apptest_camera](/img/apptests/apptest_camera.png "apptest_camera"){: .center-block :}

This is the default test that will run if you debug with Visual Studio, if you double-click the macOS bundle, or if you build an Android APK.
It shows some sprites randomly moving while you can move the camera around. The camera used to be simulated by moving the sprites in the opposite direction of the input but it now supports the `Viewport` and `Camera` classes.

**Controls**:
- Pressing `W`/`A`/`S`/`D`, dragging while pressing the left mouse button, touching with one finger, or moving the left gamepad stick will pan the camera
- Pressing the left/right arrow keys, dragging horizontally while pressing the right mouse button or touching with two fingers, or moving the right gamepad stick left/right will rotate the camera
- Pressing the up/down arrow keys, dragging vertically while pressing the right mouse button or touching with two fingers, or moving the right gamepad stick up/down will zoom the camera
- Scrolling the mouse wheel will also zoom the camera
- Pressing `T` on the keyboard or `X` on the gamepad will toggle between individual textures and a texture atlas (more chances for batching)
- Pressing `V` on the keyboard or the right bumper on the gamepad will toggle between simulating a camera by moving sprites in the opposite direction or using a `Viewport` and a `Camera` objects
- Pressing `R` on the keyboard, `Y` on the gamepad, or double-clicking/double-tapping will reset the camera position, rotation, and scale
- Pressing `B` on the keyboard or `A` on the gamepad will toggle batching
- Pressing `C` on the keyboard or `B` on the gamepad will toggle culling
- Pressing `P` on the keyboard or `Start` on the gamepad will pause the application
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the application

### apptest_clones ([web version](/apptests/apptest_clones.html))

![apptest_clones](/img/apptests/apptest_clones.png "apptest_clones"){: .center-block :}

This test is not interactive and only stresses the object cloning system to highlight errors.

**Controls**: Pressing `Escape` on the keyboard will quit the application.

### apptest_filebrowser ([web version](/apptests/apptest_filebrowser.html))

![apptest_filebrowser](/img/apptests/apptest_filebrowser.png "apptest_filebrowser"){: .center-block :}

A basic but working file browser based on ImGui, with custom coloring, permissions support, multiple sorting types, file types, and extension filters.<br />
The same code is used in [SpookyGhost](https://encelo.itch.io/spookyghost/devlog/132134/new-file-dialog-window) with the addition of icons.

**Controls**: Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface and navigate the filesystem.
Pressing `Escape` on the keyboard will quit the application.

### apptest_font ([web version](/apptests/apptest_font.html))

![apptest_font](/img/apptests/apptest_font.png "apptest_font"){: .center-block :}

A test that loads some fonts and displays strings in text nodes, with and without kerning.
If the nCine has been compiled with ImGui some of those options can be tweaked with an interface.

**Controls**:
- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Pressing `CTRL + H` on the keyboard will show or hide the ImGui interface
- Pressing `Escape` on the keyboard will quit the application

### apptest_joystick ([web version](/apptests/apptest_joystick.html))

![apptest_joystick](/img/apptests/apptest_joystick.png "apptest_joystick"){: .center-block :}

Gamepad support has always been very important for the nCine and this test shows information about the connected gamepad and visual feedback about its axes, buttons, and hats.

**Controls**: Connect a gamepad to see visual feedback about the state of its axes and buttons. Pressing `Escape` on the keyboard will quit the application.

### apptest_loading ([web version](/apptests/apptest_loading.html))

![apptest_loading](/img/apptests/apptest_loading.png "apptest_loading"){: .center-block :}

A test for the loading system of all types of resources: textures, sounds, fonts, Lua scripts, and shaders.

**Controls**:
- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Pressing `CTRL + H` on the keyboard will show or hide the ImGui interface
- Pressing `Escape` on the keyboard will quit the application

### apptest_lua ([web version](/apptests/apptest_lua.html))

![apptest_lua](/img/apptests/apptest_lua.png "apptest_lua"){: .center-block :}

By default, this test will load the example `script.lua` but you can supply another script as the first parameter when launching it on the command line.

**Controls**:
- Press the left or the right mouse buttons to set the positions of the sprites
- Press `V` to toggle the screen blur using viewports and custom shaders
- Pressing `Escape` on the keyboard will quit the application

### apptest_luareload ([web version](/apptests/apptest_luareload.html))

![apptest_luareload](/img/apptests/apptest_luareload.png "apptest_luareload"){: .center-block :}

This test shows you how to pass data between the C++ application and a Lua script with ad-hoc custom tables.
It also shows how to hot-reload a script to update the parameters of your program without recompiling or restarting it.

**Controls**:
- Pressing the left button and dragging the mouse around will move the particle system
- Pressing `5` on the keyboard will reload the same script with a different parameter that will result in different particle colors
- Pressing `Escape` on the keyboard will quit the application

### apptest_meshdeform ([web version](/apptests/apptest_meshdeform.html))

![apptest_meshdeform](/img/apptests/apptest_meshdeform.png "apptest_meshdeform"){: .center-block :}

This test shows one big `MeshSprite` object being deformed and animated.
You can choose between three types of deformations and three different animations, or deform it freely with the mouse, the touch, or the gamepad.

**Controls**:
- Pressing `A` or the left arrow on the keyboard, clicking or tapping the left half of the screen, or pressing the left gamepad bumper will change the deformation
- Pressing `D` or the right arrow on the keyboard, clicking or tapping the right half of the screen, or pressing the right gamepad bumper will change the animation
- Pressing `B` on the keyboard or `A` on the gamepad will toggle batching
- Pressing `C` on the keyboard or `B` on the gamepad will toggle culling
- Pressing `P` on the keyboard or `Start` on the gamepad will pause the application
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the application

### apptest_meshsprites ([web version](/apptests/apptest_meshsprites.html))

![apptest_meshsprites](/img/apptests/apptest_meshsprites.png "apptest_meshsprites"){: .center-block :}

The test shows the same scene using regular `Sprite` objects with blending, or with `MeshSprite` objects composed of an inner opaque part and a transparent border.

**Controls**:
- Pressing `B` on the keyboard or `A` on the gamepad will toggle batching
- Pressing `C` on the keyboard or `B` on the gamepad will toggle culling
- Pressing `T` on the keyboard or `X` on the gamepad will toggle between individual textures and a texture atlas (more chances for batching)
- Pressing `V` on the keyboard or the right bumper on the gamepad will toggle between simulating a camera by moving sprites in the opposite direction or using a `Viewport` and a `Camera` objects
- Pressing `M` on the keyboard or the left bumper on the gamepad will toggle between using `Sprite` or `MeshSprite` objects
- Pressing `P` on the keyboard or `Start` on the gamepad will pause the application
- Pressing `1`, `2`, `3`, `4`, or `8` will progressively animate fewer sprites
- Pressing `R` on the keyboard or `Y` on the gamepad, or double-clicking or double-tapping will reset the camera zoom
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the application

### apptest_multitouch

![apptest_multitouch](/img/apptests/apptest_multitouch.png "apptest_multitouch"){: .center-block :}

On Android or a laptop with a touch screen, this test will show you the position of your fingers on the screen.

**Controls**: Use the touch screen to tap with multiple fingers. Pressing `Escape` on the keyboard will quit the application.

### apptest_particles ([web version](/apptests/apptest_particles.html))

![apptest_particles](/img/apptests/apptest_particles.png "apptest_particles"){: .center-block :}

A test that shows a particle emitter with some preset affectors and emitting particles.
If the nCine has been compiled with ImGui some options can be tweaked with an interface.

**Controls**:
- Pressing `W`/`A`/`S`/`D`, dragging while pressing the left mouse button, touching with one finger, or moving the left gamepad stick will move the particle emitter
- Pressing the arrow keys, dragging while pressing the right mouse button, touching with two fingers, or moving the right gamepad stick will move the emission direction
- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Pressing `CTRL + H` on the keyboard will show or hide the ImGui interface
- Pressing `Escape` on the keyboard will quit the application

### apptest_rotozoom ([web version](/apptests/apptest_rotozoom.html))

![apptest_rotozoom](/img/apptests/apptest_rotozoom.png "apptest_rotozoom"){: .center-block :}

A very simple test showing a bunch of sprites rotating, zooming, and moving around while maintaining a square formation.

**Controls**:
- Pressing `B` on the keyboard or `A` on the gamepad will toggle batching
- Pressing `C` on the keyboard or `B` on the gamepad will toggle culling
- Pressing the left bumper on the gamepad, or the left mouse button, or tapping the screen with one finger will pause sprites rotation
- Pressing the right bumper on the gamepad, or the right mouse button, or tapping the screen with two fingers will pause the square sprites formation
- Pressing `P` on the keyboard or `Start` on the gamepad will pause both the sprite rotation and the square formation
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the application

### apptest_scene ([web version](/apptests/apptest_scene.html))

![apptest_scene](/img/apptests/apptest_scene.png "apptest_scene"){: .center-block :}

A test showing some bouncing sprites and interfaces to control some parameters.
Based on the enabled integrations and the preferred backend you might see the ImGui, Nuklear, and Qt5 interfaces, even all at once!

**Video**:[nCine as a custom Qt5 widget](https://www.youtube.com/watch?v=PpVLD3ShiCw)<br/>
**Controls**:
- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the interfaces
- Pressing `P` on the keyboard, or the left mouse button, or tapping the screen if no interface is available will pause the application
- Pressing `CTRL + H` on the keyboard will show or hide the ImGui and the Nuklear interfaces
- Pressing `Escape` on the keyboard will quit the application

### apptest_shaders ([web version](/apptests/apptest_shaders.html))

![apptest_shaders](/img/apptests/apptest_shaders.png "apptest_shaders"){: .center-block :}

A test that shows the custom shaders API and how to do post-processing with viewports.
You will see regular sprites, mesh sprites, and some multi-textured normal mapped sprites, all using custom shaders and with batching!
The ImGui interface will allow you to tweak the lighting parameters for normal mapped sprites and change the post-processing between bloom (using multiple render targets and downsampling) and a separable Gaussian blur.

**Controls**:
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
- Pressing `P` on the keyboard or `Start` on the gamepad will pause the application
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the application

### apptest_simdbench ([web version](/apptests/apptest_simdbench.html))

![apptest_simdbench](/img/apptests/apptest_simdbench.png "apptest_simdbench"){: .center-block :}

This test was made while researching Intel and ARM Neon SIMD intrinsics and their performance.
The branch with intrinsics was not merged back as auto-vectorization seemed fast enough, while this benchmark was added to the rest of the tests.

**Controls**:
- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Pressing `Escape` on the keyboard will quit the application

### apptest_sinescroller ([web version](/apptests/apptest_sinescroller.html))

![apptest_sinescroller](/img/apptests/apptest_sinescroller.png "apptest_sinescroller"){: .center-block :}

A small homage to old-skool demoscene sine scrollers, with letters forming a message and bouncing in a sine wave.

**Controls**:
- Pressing `B` on the keyboard or `A` on the gamepad will toggle batching
- Pressing `I` on the keyboard or `X` on the gamepad will toggle batching with indices
- Pressing `P` on the keyboard or `Start` on the gamepad will pause the application
- Pressing `Escape` on the keyboard will quit the application

### apptest_texformats ([web version](/apptests/apptest_texformats.html))

![apptest_texformats](/img/apptests/apptest_texformats.png "apptest_texformats"){: .center-block :}

This is a test for different texture format loaders, especially for GPU compressed formats (like ASTC, DXT, or ETC), and for container formats (like PVR, KTX, or DDS).

**Controls**:
- Pressing the left/right or `A`/`D` keys, clicking or touching the screen on the left or right side, moving the left gamepad stick left/right, pressing the D-pad left/right, or using the bumpers will change the texture
- Pressing the up/down or `W`/`S` keys, clicking or touching the screen on the upper or lower side, moving the left gamepad stick up/down will change the MIP level
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the application

### apptest_viewports ([web version](/apptests/apptest_viewports.html))

![apptest_viewports](/img/apptests/apptest_viewports.png "apptest_viewports"){: .center-block :}

This is a test for the `Viewport` and `Camera` classes. It shows multiple viewports arranged in a vertical split screen and with picture-in-picture.
You can tweak both the viewport and the camera parameters with an ImGui interface.

**Controls**:
- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Pressing `W`/`A`/`S`/`D`, dragging while pressing the left mouse button, touching with one finger, or moving the left gamepad stick will pan the camera
- Pressing the left/right arrow keys, dragging horizontally while pressing the right mouse button or touching with two fingers, or moving the right gamepad stick left/right will rotate the camera
- Pressing the up/down arrow keys, dragging vertically while pressing the right mouse button or touching with two fingers, or moving the right gamepad stick up/down will zoom the camera
- Scrolling the mouse wheel will also zoom the camera
- Pressing `R` or double-clicking will reset the camera position, rotation, and scale
- Pressing `B` on the keyboard will toggle batching
- Pressing `C` on the keyboard will toggle culling
- Pressing `P` will pause the application
- Pressing `I` on the keyboard will enable or disable the mouse input
- Pressing `CTRL + H` on the keyboard will show or hide the ImGui interface
- Pressing `Escape` on the keyboard will quit the application

### glapptest_fbo_cube ([web version](/apptests/glapptest_fbo_cube.html))

![glapptest_fbo_cube](/img/apptests/glapptest_fbo_cube.png "glapptest_fbo_cube"){: .center-block :}

This test is only available when the nCine is built as a static library and it uses the OpenGL API layer directly, bypassing the scenegraph and the sprite systems.

**Controls**:
- Pressing the left bumper on the gamepad, or the left mouse button, or tapping the screen with one finger will pause the triangle animation
- Pressing the right bumper on the gamepad, or the right mouse button, or tapping the screen with two fingers will pause the cube animation
- Pressing `P` on the keyboard or `Start` on the gamepad will pause both the triangle and the cube animations
- Pressing `Escape` on the keyboard or `Guide` on the gamepad will quit the application
