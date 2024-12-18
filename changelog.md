---
layout: page
title: Changelog
permalink: /changelog/
---

## December 2024

### Breaking Changes
- Renamed `ncine.audiobuffer` to `ncine.audio_buffer` in the Lua API
- Renamed `ncine.audiobuffer_player` to `ncine.audio_buffer_player` in the Lua API
  - Renamed `get_audiobuffer()` and `set_audiobuffer()` to `get_audio_buffer()` and `set_audio_buffer()`
- Renamed `ncine.audiostream_player` to `ncine.audio_stream_player` in the Lua API
  - Renamed `num_samples_in_streambuffer()` and `streambuffer_size()` to `num_samples_in_stream_buffer()` and `stream_buffer_size()`

### Improvements
- The version of the integrated ImGui has been updated to [v1.91.6](https://github.com/ocornut/imgui/releases/tag/v1.91.6)
- The version of the integrated Google Benchmark has been updated to [v1.9.1](https://github.com/google/benchmark/releases/tag/v1.9.1)

## November 2024

### Breaking Changes
- Renamed `permissions()` to `get_permissions()` in the filesystem table of the Lua API
- Removed the `get_` prefix from `get_num_vertices()`, `get_num_bytes()`, and `get_num_indices()` in the mesh sprite Lua functions

### Improvements
- Lua statistics are now disabled by default to enable hooking by external debuggers like the [Lua Local Debugger](https://github.com/tomblind/local-lua-debugger-vscode)
- The version of the integrated ImGui has been updated to [v1.91.5](https://github.com/ocornut/imgui/releases/tag/v1.91.5)
- Multiple additions, fixes, and expansions to the Doxygen documentation
- Added some new Lua API functions
  - Added `input.num_joymappings()` to return the number of available mappings for joysticks
  - Added `particle_affector.get_base_scale()` to return the base scale factor of a size affector
  - Added a constructor overload that takes the position as a vector for animated and mesh sprites
- Many viewport, shader, and shaderstate Lua functions now return a boolean to indicate the result
- When calling the Lua `particle_system.add_size_affector()` function, you can now use a `vec2` for the scale factors

### Fixes
- Added missing overload constructors for mesh and animated sprites in the Lua API
- Added some missing button names for mapped joysticks in the Lua API
- Minimum CMake version has been raised to 3.10 to avoid a deprecation warning
- Added the missing `dpi` field to the Lua table returned by `gfx_device.get_monitor()`
- Fix the Lua `viewport.set_camera()` function to accept `nil` as a camera parameter
- Add missing joystick buttons to Lua input event tables

## October 2024

### Improvements
- Add `MemoryFile` class constructors that own a memory buffer
- The version of the integrated ImGui has been updated to [v1.91.4](https://github.com/ocornut/imgui/releases/tag/v1.91.4)
- The version of the integrated Google Test has been updated to [v1.15.2](https://github.com/google/googletest/releases/tag/v1.15.2)
- The version of the integrated Google Benchmark has been updated to [v1.9.0](https://github.com/google/benchmark/releases/tag/v1.9.0)

## September 2024

### Improvements
- The version of the integrated ImGui has been updated to [v1.91.2](https://github.com/ocornut/imgui/releases/tag/v1.91.2)
- The version of the integrated Tracy has been updated to [v0.11.1](https://github.com/wolfpld/tracy/releases/tag/v0.11.1)
- Swap deprecated `ALooper_pollAll()` function for `ALooper_pollOnce()` on Android

## July 2024

### Improvements
- The version of the integrated ImGui has been updated to [v1.90.9](https://github.com/ocornut/imgui/releases/tag/v1.90.9)

## June 2024

### New Features
- Added many new OpenAL source properties to the audio players
- Add support for some useful OpenAL extensions
  - `pause_device`, `deferred_updates`, `source_spatialize`
- Added optional support for EFX effects and filters, also in the Lua API

### Improvements
- The sound sources are now arranged in a pool for the players to pick, fixing some issues with playing
- Handling the `OV_HOLE` vorbisfile error code by continue decoding instead of fatal asserting
- Added a stress test mode to `apptest_audio`
- Add support for joystick axes mapped as buttons
- The version of the integrated ImGui has been updated to [v1.90.8](https://github.com/ocornut/imgui/releases/tag/v1.90.8)
- The version of the integrated Google Benchmark has been updated to [v1.8.4](https://github.com/google/benchmark/releases/tag/v1.8.4)

### Fixes
- Fixed a couple of alignment faults with Emscripten and some apptests

## April 2024

### Breaking Changes
- Rename `nc::IAudioDevice::PlayerType::AUDIOSTREAM` to `nc::IAudioDevice::PlayerType::STREAM`

## March 2024

### Breaking Changes
- The `freezePlayers()`/`unfreezePlayers()` methods of the audio device have been removed
  - The Lua functions `freeze_players()`/`unfreeze_players()` have been removed too

## February 2024

### Improvements
- Added support for custom memory allocators and window position hints of GLFW 3.4
- Some minor changes to the `IAllocator` methods that handle debug allocation entries
- The version of the integrated ImGui has been updated to [v1.90.4](https://github.com/ocornut/imgui/releases/tag/v1.90.4)

## January 2024

### Improvements
- The version of the integrated ImGui has been updated to [v1.90.1](https://github.com/ocornut/imgui/releases/tag/v1.90.1)

### Fixes
- Fixed compilation when enabling the custom memory allocators
- Moved `Particle.h` to public headers to fix compilation warnings
  - The header should not be directly included by users

## November 2023

### New Features
- There is now an option to use binary shaders: they will be compiled on the first run and then cached on disk
  - Default shaders will use this feature as well, if enabled in the configuration
  - Batched shaders can be compiled twice to query the max number of batches for the UBO size

### Improvements
- A new class has been added to calculate a 64-bit hash from strings or from file information (also in the Lua API)
- Emscripten stack size has been increased from the default 64 Kb to 128 Kb
- The version of the integrated ImGui has been updated to [v1.90](https://github.com/ocornut/imgui/releases/tag/v1.90)

## October 2023

### Breaking Changes
- The `Timer::sleep()` method now needs an integer number of milliseconds instead of a float number of seconds.
- The `join()` and `exit()` methods of the `Thread` class do not support custom return values anymore

### Improvements
- The version of the integrated Tracy has been updated to [v0.10](https://github.com/wolfpld/tracy/releases/tag/v0.10)

### Fixes
- The `Thread` class can be be move constructed or move assigned without causing random crashes

## September 2023

### Improvements
- Updated support for Gradle plugin 8.1.0 and build tools 33.0.1 on Android
- The version of the integrated ImGui has been updated to [v1.89.9](https://github.com/ocornut/imgui/releases/tag/v1.89.9)
- The version of the integrated Google Test has been updated to [v1.14.0](https://github.com/google/googletest/releases/tag/v1.14.0)
- The version of the integrated Google Benchmark has been updated to [v1.8.3](https://github.com/google/benchmark/releases/tag/v1.8.3)

## July 2023

### Improvements
- The version of the integrated ImGui has been updated to [v1.89.7](https://github.com/ocornut/imgui/releases/tag/v1.89.7)

## June 2023

### Improvements
- The version of the integrated ImGui has been updated to [v1.89.6](https://github.com/ocornut/imgui/releases/tag/v1.89.6)

## May 2023

### New Features
- Add a new `apptest_bunnymark`, an nCine port of the famous BunyMark benchmark

### Improvements
- Added an interface class to tweak the frame timer options
  - A second timer has been added to the frame timer to calculate averages

## April 2023

### Breaking Changes
- The `homeDir()` method of the `FileSystem` class have been renamed to `homePath()`
- The `get_home_dir()` function of the Lua filesystem table has been renamed to `get_home_path()`
- The `get_datapath()` and `get_savepath()` functions of the Lua filesystem table have been renamed to `get_data_path()` and `get_save_path()`

### New Features
- The `apptest_lua` has a new ImGui interface and can now automatically reload a modified Lua script

### Improvements
- The version of the integrated ImGui has been updated to [v1.89.5](https://github.com/ocornut/imgui/releases/tag/v1.89.5)
- The version of the integrated Google Test has been updated to [v1.13.0](https://github.com/google/googletest/releases/tag/v1.13.0)
- There is now a new method in the `FileSystem` class to return the path to store cached files

## March 2023

### Improvements
- The version of the integrated Tracy has been updated to [v0.9.1](https://github.com/wolfpld/tracy/releases/tag/v0.9.1)
- The version of the integrated ImGui has been updated to [v1.89.4](https://github.com/ocornut/imgui/releases/tag/v1.89.4)

## February 2023

### Improvements
- The version of the integrated ImGui has been updated to [v1.89.3](https://github.com/ocornut/imgui/releases/tag/v1.89.3)

## January 2023
- The version of the integrated ImGui has been updated to [v1.89.2](https://github.com/ocornut/imgui/releases/tag/v1.89.2)

## December 2022

### Breaking Changes
- The `animation_index()` and `frame()` functions of the Lua animated sprite have been renamed to `get_animation_index()` and `get_frame()`

### Improvements
- The Lua API for the `Application` class has now a function to get the `AppConfiguration` table
- Scale down the size of the error messages in `apptest_lua` if does not fit the screen
- Added a method to `RectAnimation` to automatically add multiple rectangles from a spritesheet
- Added functions to the Lua API to retrieve the array of children of a node

### Fixes
- The minimum and maximum values of a joystick axis are now queried on Android
- When calling `Sprite::setTexture()` with the same texture the rectangle gets reset
- Create or destroy the Windows console if changing the console log level with the setter

## November 2022

### Improvements
- The version of the integrated Tracy has been updated to [v0.9](https://github.com/wolfpld/tracy/releases/tag/v0.9)
- The version of the integrated ImGui has been updated to [v1.89.1](https://github.com/ocornut/imgui/releases/tag/v1.89.1)
- It is now possible to choose the render mode used by a `TextNode`
  - There is a new render mode for colored fonts that uses the sprite shader
- On Android there is now always a fallback joystick mapping based on the default system configuration

### Fixes
- The joystick GUID calculation on Android has been updated to be again compatible with the SDL2 controller database

## October 2022

### Breaking Changes
- The `IGfxDevice::setResolution()` method has been removed. Depending on the full screen state, use `setWindowSize()` or `setVideoMode()`
- The `inFullscreen` and `isResizable` flags of the `AppConfiguration` class have been renamed to `fullScreen` and `resizable`
- To query the supported video modes, you have to query the list of connected monitors with `IGfxDevice::numMonitors()` and `IGfxDevice::monitor()`

### New Features
- It is now possible to enumerate connected monitors on all desktop backends
  - You can now query window scaling and drawable resolution to better support HiDPI monitors
  - The Lua API has been extended to support the new methods of the `IGfxDevice` class
  - There is a new `apptest_scaling` application that shows automatic window size scaling

### Improvements
- Failing to load a file will now never exit the application

### Fixes
- Various fixes about window size, window position, and full screen

## September 2022

### New Features
- There is a new `onFilesDropped()` input callback to support drag'n'drop from the system to the application window

### Improvements
- The JNI helper classes have been refactored to use global references and be more stable and secure
- Shader programs now detach shaders before deleting them, so they are really deleted and memory is freed
- The new `NCINE_UNDEFINED_SANITIZER` CMake options adds support for the UBSan of GCC and Clang

### Fixes
- The Android manifest has been updated to allow compilation on latest Android versions

## August 2022

### Improvements
- Improvements to `ParticleSystem` and to particle affector classes
  - It is now possible to add affector steps out of order
  - A new getter method in `ParticleSystem` allows the manipulation of affectors
  - Affector steps can be manipulated via a new Lua API
- A new `AudioStreamPlayer` getter returns the sample offset relative to the whole stream
- The audio, font, and particles apptests have brand new ImGui interfaces

## July 2022

### Breaking Changes
- The viewport chain is now an array accessible with the static `Viewport::chain()` method
- The `Application::rootViewport()` method has been renamed to `screenViewport()`
- The `GLShaderAttributes` class have been deleted and its functionalities transferred to `GLShaderProgram`
- Added the `get_` prefix to some Lua getters of the `MeshSprite` class
- The Android sources are now an independant module inside the `app` directory

### New Features
- New `Shader` and `ShaderState` classes to support custom user shaders (Lua API too)
  - Mesh sprites now support custom vertex format, if the appropriate shader is provided
  - The `script.lua` example has been updated to show post-processing using viewports and shaders
- Added support for multi-texturing and multiple render targets
- A new `apptest_shaders` application has been added to test custom shaders with batching
  - It shows post-processing blur, normal mapping, and bloom

### Improvements
- The version of the integrated Tracy has been updated to [v0.8.2](https://github.com/wolfpld/tracy/releases/tag/v0.8.2)
- The render batcher is now able to deal with custom shaders, providing the user writes a batched shader
- Improved and simplified API for viewports (also ported to Lua)
- Added methods to set OpenGL debugging labels for shaders, textures, and viewport's FBOs
- There is now an `onDrawViewport()` callback that you can use to set shader uniforms when drawing a particular viewport
- There is also an `onResizeWindow()` callback that can be useful to recreate post-processing viewport textures
- Added missing getters and more methods to the Lua API of the `MeshSprite` class
- Updated support for Gradle plugin 7.2.0, build tools 33.0.0, and NDK r25 on Android
- Added support for the `Vector4` class in the Lua API

### Fixes
- Added the missing SceneNode::lastFrameUpdated() method to the Lua API
- You will never see again errors about reserved OpenGL uniforms or attributes not being found (like `gl_VertexID`)
- Non-compiling shaders will not fatal assert like they did before
- Fixes to the methods dealing with vertices and indices of the Lua API of the `MeshSprite` class
- The `minBatchSize`/`maxBatchSize` rendering settings have been fixed and will not cause flickering when batching

## June 2022

### Breaking Changes
- Added the `get_` prefix to some Lua getters of the `Application` and `IAudioDevice` classes

### Improvements
- The version of the integrated ImGui has been updated to [v1.88](https://github.com/ocornut/imgui/releases/tag/v1.88)
- No more crashes when dereferencing Lua light user data pointers of the wrong type
  - The tracking of pointers to C++ objects created in Lua has improved a lot

### Fixes
- Trying to play a sound when there are no available audio players will not crash the application
- Fixed the parameters retrieving of Lua joystick state functions

## May 2022

### Breaking Changes
- Added the `get_` prefix to the Lua getters of the `Font` class

### Improvements
- The version of the integrated Tracy has been updated to [v0.8.1](https://github.com/wolfpld/tracy/releases/tag/v0.8.1)
- Added a static method to the `TextNode` class to calculate the boundaries for arbitrary text and font
- The `Font` class can now be constructed using an existent `Texture` object
  - This allows for texture sharing (like an atlas) or textures constructed from texels

## April 2022

### Breaking Changes
- The `DrawableNode::LayerBase` enumeration has been deleted
  - This also means that `TextNode` will not be on a higher layer by default
- The `SceneNode::draw()` method now returns a boolean to indicate if it has been rendered

### New Features
- You can set the layer of a `SceneNode` and it will carry this value over to its children
  - A child node with a layer different than 0 will not inherit it from its parent
- Added a scenegraph visit order when sorting the rendering commands

### Improvements
- The `apptest_anchor` application can now show and modify all the different order and layer values

### Fixes
- The `apptest_scene` and `apptest_viewports` applications now work correctly on Qt5

## March 2022

### Breaking Changes
- The `Object::name()` method now returns an array of characters
- Inverted position and rotation view values for the `Camera`. It will now behave as an object that you move around the scene.

### Improvements
- The version of the integrated Tracy has been updated to [v0.8](https://github.com/wolfpld/tracy/releases/tag/v0.8)
- Allow a relative path from executables to data on Linux

### Fixes
- Fixed an issue with ImGui and Nuklear uploading VBOs before setting a vertex format (and consequently a VAO)
- Map and set containers can now perform a rehash when their values or keys are non-copyable classes
- Updating node transformation before committing uniform blocks

## February 2022

### New Features
- There is now a new `nctl::StaticString` class that stores its characters on the stack

### Improvements
- The version of the integrated ImGui has been updated to [v1.87](https://github.com/ocornut/imgui/releases/tag/v1.87)
- Using the new event-based ImGui input API on all backends
- Math classes like vectors, matrices, and quaternions will now initialize their members in the default constructor
- Disabling the cursor will now enable a relative mouse motion if supported (SDL and GLFW)
- The Qt5 widget exposes a flag to disable per-frame updates
- It is now possible to retrieve last frame AABB of a `DrawableNode`
- More information will be presented when the OpenGL debug context is enabled (marker annotations)

### Fixes
- The fixed capacity property is now correctly initialized when copy constructing, move constructing, and move assign a `String`
- A `Sprite` or a `MeshSprite` without a texture would make the application crash when a texture was assigned
- A `TextNode` without a font would make the application crash when a font was assigned
- A scene node with a negative scale factor will invert its rotation sign

## January 2022

### Breaking Changes
- The public `x` and `y` fields of a `SceneNode` have been made protected for consistency
- The `IGfxDevice` interface cannot set the OpenGL viewport and clear color, use viewports instead
- The ImGui and Nuklear layer settings are part of the GUI settings structure in the `Application` class

### New Features
- Multiple viewports to support offscreen rendering or split screen
- A camera system to move around without transforming a parent node (slow on the CPU)
- The viewport and camera systems can also be used via the Lua API
- A new `apptest_viewports` application has been added to test the viewport and camera systems

### Improvements
- Dirty bits to update shader uniforms only when they change
- Dirty bits to transform a node or update its AABB only when needed
- There is now a centralized pool of render commands that serves multiple classes
- There are now OpenGL state classes to track the viewport and the clear color
- The `Rect` class has some new useful manipulation methods (also in the Lua API)

## June 2020 - December 2021

### Breaking Changes
- The `nctl::Array` and `nctl::StaticArray` subscript operator will not grow the array size
- The return type of the `createAppEventHandler` function has been changed to a unique pointer
- The `SceneNode` query methods for drawing and updating have been prefixed with `is`, for example `isEnabled()`
- The `setWidth()` and `setHeight()` methods of the `BaseSprite` class have been removed
- The `errorToString()` function of the `LuaDebug` namespace has been renamed to correct a typo
- The parameters order of `LuaStateManager::runFromMemory()` has changed
- The default line height of a `TextNode` object is now its font line height instead of the base
- The `AnimatedSprite` class now stores `RectAnimation` objects instead of smart pointers
- The type alias declarations for hash containers with string keys have been removed
- The `run()` method of the `LuaStateManager` class has been renamed to `runFromFile()`
- The `onFrameEnd()` callback is now invoked before the OpenGL buffers swap
- The `assign()` method of `nctl::String` will now always truncate the destination
  - The new `replace()` method wil behave like the old `assign()` method
- Pushing an element beyond the capacity of an array will now cause a fatal assert
- Popping an element from an empty array will now cause a fatal assert
- Retrieving a front or a back element from an empty array will now cause a fatal assert
- Retrieving a front or a back element from an empty list will now cause a fatal assert

### New Features
- The engine now supports custom memory allocators
  - All containers have been updated to allow the specification of an allocator
  - Unique pointers support custom deleters in a compressed pair
  - A new `apptest_allocators` application has been added to test the four included allocator types
  - You can set a name for an allocator and it will be used in [Tracy](https://github.com/wolfpld/tracy/releases/tag/v0.7.3) too
- The FileSystem API now supports Android asset FileSystem
- It is now possible to load textures, sounds and fonts from memory buffers
- There is a new loading API for resources as textures, sounds, and fonts
  - The user can create empty resources and load data at a later time
  - Data can be loaded inside a resource multiple times
  - Failed loads will never result in a fatal assert nor modify a resource
  - A texture can be loaded from uncompressed texels and audio from PCM samples
  - A new `apptest_loading` application has been added to test the enhanced loading capabilities
- Sprites can be created without a texture, they will be rendered in solid color with a simpler shader
- `TextNode` objects can be created without assigning a `Font`
- `AudioBufferPlayer` can be created without assigning an `AudioBuffer`
- It is now possible to move construct or move assign resource and node classes
- A `clone()` method has been added to node classes to perform an object copy
- A new `onTextInput` event has been added to receive UTF-8 characters
- It is now possible to query and set the window position on all desktop backends
- There is now an `onPostUpdate()` callback that you can use to access the node transform for the current frame
  - It is also possible to change it inside the callback by using `SceneNode::setWorldMatrix()`
- The `nctl::String` class will now automatically reallocate memory to expand its capacity and never truncate by default
  - The old behavior is still available by specifying the `nctl::StringMode::FIXED_CAPACITY` option
- The template project files are now part of the engine
  - You only need a simple `CMakeLists.txt` file for your project
- You can save a texture from video memory to RAM and then from RAM to disk as a PNG or WebP image
- On desktop platforms the `IGfxDevice` provides a `flashWindow()` method to make the taskbar flash
- nCine can now run on a [Raspberry Pi](https://www.raspberrypi.com/)
  - Various fixes to better support OpenGL ES features and older CMake versions
- It is now possible to disable the scripting API while retaining the Lua integration

### Improvements
- The version of the integrated Tracy has been updated to [v0.7.8](https://github.com/wolfpld/tracy/releases/tag/v0.7.8)
- The version of the integrated ImGui has been updated to [v1.86](https://github.com/ocornut/imgui/releases/tag/v1.86)
- The version of the integrated Google Test has been updated to [v1.11.0](https://github.com/google/googletest/releases/tag/release-1.11.0)
- The version of the integrated Google Benchmark has been updated to [v1.6.1](https://github.com/google/benchmark/releases/tag/v1.6.1)
- All containers now split the allocation phase from object construction
  - Creating a container will only reserve memory for the elements
  - Inserting or removing elements will trigger construction and destruction
- On Android unfound libraries will not be linked anymore to the game library
  - The Java activity will not load the nCine or OpenAL libraries if unneeded
- It is now possible to set the ARGB components of a color with a hexadecimal code
- The `nctl::String` class can now decode [Unicode](http://unicode.org) code points from UTF-8 strings and vice versa
- The `Font` class now supports Unicode characters exported in the Fnt descriptor file
- The Android software keyboard visibility can be toggled on and off
- The seek position of an audio buffer can be queried and modified
- It is now possible to set a custom line height for a `TextNode` object
- When loading a RGB texture it is possible to treat a color as transparent
- You can now use `nctl::String` and `const char *` as keys for hash containers without specifing an hash function
- There is a new `removeAllChildrenNodes()` method in the `SceneNode` class
- You can retrieve the current `RectAnimation` of an `AnimatedSprite` with the `currentAnimation()` method
- Errors in Lua scripts will not cause the engine to assert and exit
  - It is now possible to load a Lua script without running it
  - More information will be provided when a script fails to load or to run
- The engine project is now shipping with an [.editorconfig](https://editorconfig.org/) configuration file
- The OpenGL class that keeps track of the blending state can now use separate functions for RRB and alpha
- The file extension comparison method is now case-insensitive
- The `FileSystem` class returns constant strings to prevent move assignemnt and any modification to the capacity of destination ones
- There is now a `fixExtension()` function in the `FileSystem` class to assure that a file has the intended extension

### Fixes
- GCC hardening compiler flags have been fixed with the explicit addition of PIE flags
- The root node of the scenegraph now honors its own transformations
- The buffer of an `AudioBufferPlayer` class was not detached from the OpenAL source when it finished playing
- The `setSize()` method of `nctl::Array` will now create objects when extending an array size
- The ImGui and Nuklear drawing commands were previously appended to the render queue with one frame delay
- Fix `ncine.sprite.set_flipped_x()` and `set_flipped_y()` functions in the Lua API

## November 2019 - May 2020

### Breaking Changes

- Removed `flipX()` and `flipY()` sprite methods
  - They have been superseded by `setFlippedX()` and `setFlippedY()`
- Removed `setOpaqueTexture()` sprite method
  - You can achieve the same result with the general `setBlendingEnabled(false)`
- The `Matrix4x4<T>::scale()` static method has been renamed to `Matrix4x4<T>::scaling()`
- The `dataPath()` and `savePath()` methods of `IFile` have been moved to the new `FileSystem` class
  - The `access()` method of `IFile` have been superseded by the more powerful query methods of the `FileSystem` class
  - The `nc.application.datapath()` Lua function is now `nc.fs.get_datapath()`
- The `children()` method of a `SceneNode` now returns a `nctl::Array`

### New Features

- Scene nodes support anchor points and non-uniform scaling
  - There is a new `apptest_anchor` application that shows all new node features
- Drawable nodes support custom alpha blending factors
- [Nuklear](https://github.com/Immediate-Mode-UI/Nuklear) integration for fully skinnable user interfaces
- You can now embed the whole engine inside a Qt5 widget by choosing the Qt5 desktop backend
  - If the [Qt Gamepad](https://doc.qt.io/qt-5/qtgamepad-module.html) library is available it will be used for gamepad input events
- Touch events are supported on desktop through the SDL2 and Qt5 backends
  - They now also provide information about touch pressure
- The `FileSystem` class has been added to help you query and manipulate paths, files, and directories
  - It comes with a new `apptest_filebrowser` application that shows an ImGui based file browser
- ImGui and Nuklear integrations support custom fonts loading
- Added a new unclamped three channels `ColorHdr` class
- The `IAppEventHandler` class now receives `onSuspend()` and `onResume()` events

### Improvements

- The logging system is initialized earlier and can be used inside `onPreInit()`
- The Android asset manager is initialized earlier and can be used inside `onPreInit()`
- Handling of windows resizing events has been fixed
- Emscripten applications react to window resizing and fullscreen events
- Emscripten applications can now load and save local files
- Sprite flipping methods now take a status flag
- The version of the integrated Tracy has gone from [v0.5](https://bitbucket.org/wolfpld/tracy/src/v0.5/) to [v0.6.3](https://bitbucket.org/wolfpld/tracy/src/v0.6.3/)
- The version of the integrated ImGui has gone from [v1.73](https://github.com/ocornut/imgui/releases/tag/v1.73) to [v1.76](https://github.com/ocornut/imgui/releases/tag/v1.76)
- Deletion of children scene nodes upon parent destruction has been made optional
- The `Matrix4x4<T>` can now translate, rotate and scale in place, avoiding a full matrix multiplication
  - It can now also be multiplied on the right side of a vector
- Automatic sprite batching is now available on Emscripten
  - You can choose the fixed batch size with a variable in the `AppConfiguration` class
- Added support for [Google ANGLE](http://angleproject.org) libraries on Windows
- Sorting of render commands is now stable
  - If two commands have the same material sorting key then a secondary key based on node creation time is used
- All kind of hashmap and hashset containers can now correctly use `const char *` as key type
- Added two low-level classes to save textures as Png or WebP images
- It is now possible to set the swap interval on all desktop backends with `IGfxDevice::setSwapInterval()`
- The new `String::append(const char *)` overload will prevent allocating a string object when appending
- Visiting the scenegraph should be faster as children are now stored in an array instead of a list
- The new unordered remove methods of arrays will remove elements faster when preserving order is not required
- The debug overlay interface has now a node inspector to query and modify nodes in the scene
- Android Gradle Plugin, Build Tools, `compileSDKVersion` and `targetSDKVersion` have all been updated to newer versions

### Fixes

- The Emscripten port compiles with upstream LLVM WebAssembly backend
- Some minor fixes in the color classes code
- Culling of drawable nodes works with negative scaling factors
- Scene nodes are now correctly transformed before children thus eliminating any update delay with nodes chains
- Caching of `TextNode` boundaries does not introduce a one frame delay on update
- The Lua stack is now cleaned after a failure in calling a function
  - Previously the stack would easily overflow if some callbacks were not defined
- String lenght is now updated if a string is truncated when using a formatting method
- Fixed OpenGL FBO wrapper class when dealing with reading and drawing buffers

## May 2019 - October 2019

### Breaking Changes

- The `Font` constructor has now inverted parameters: `fntFilename` as first and `texFilename` as second
  - The reason for that is the new single parameter constructor
- `SceneNode::parentNode()` getter has been renamed to just `parent()`, to be consistent with the new `setParent()` setter
- The `xResolution` and `yResolution` fields of the `AppConfiguration` class have been replaced by a single 2D resolution vector
  - The `setResolution()` helper method has been removed as it is now possible to call `resolution.set()`
  - In Lua `x_res` and `y_res` have been replaced by the `resolution` 2D vector
- The old non ImGui debug overlay has been deleted. If you need the debug overlay you also need to enable the ImGui integration
  - As part of this change the `fontTexFilename` and `fontFntFilename` strings in the `AppConfiguration` class have been deleted
- The `withProfilerGraphs` and `withInfoText` flags in the `AppConfiguration` class has been unified into a single `withDebugOverlay` flag
  - You have to explicitely set the new flag to `true` to enable the debug overlay even when your application is compiled in debug mode
- Many `nctl::String::copy()` methods have been turned into `assign()` methods in order to be more consistent with STL
- The `Timer::now()` method has been removed, refer to the new `TimeStamp` class

### New Features

- Emscripten is now supported as a target platform, meaning you can now use the nCine for web games! :spider_web:
- The user can now query the available fullscreen video modes on PC and choose one
  - The `IGfxDevice` interface has been enriched with methods to query the current video mode, the list of available ones and to set a new mode
- A new `deferShaderQueries` flag has been added to the `AppConfiguration` classes
  - When it is set to `true` all the shader error checks and introspection queries are deferred upon the first use of the shader, if it is ever used.
  - The option allows for decreased starting time at the expense of possible stutters when the shader is first used in a frame
- New methods have been added to the audio classes to query their state
  - They were used in the new _Audio Players_ section of the ImGui debug overlay interface
- If you use the nCine compiled as a static library you have now access to more functionalities in the OpenGL classes
  - You can now create [PBOs](https://www.khronos.org/opengl/wiki/Pixel_Buffer_Object) and [TBOs](https://www.khronos.org/opengl/wiki/Buffer_Texture).
  - You can now use `GL_SAMPLER_1D` and `GL_SAMPLER_3D` types in shaders
  - A new `GLCullFace` class has been added to track OpenGL face culling state
- The `Font` class now relies on `FntParser` class to extract all the data from a FNT file
  - More checks are now performed to ensure the text can be properly rendered
  - More glyph channel configurations are now supported and rendered correctly
  - The `Font` class can be constructed with a single parameter: the FNT file. The texture will be loaded according to the file specified in the first `page` tag.
- When you compile the engine you can now choose to disable the support for various dependency libraries and features
  - You can disable threads support, Lua bindings, Png or WebP image loading, Ogg Vorbis sound loading or audio altogether

### Improvements

- The version of the integrated Tracy has gone from [v0.4.1](https://bitbucket.org/wolfpld/tracy/src/v0.4.1/) to [v0.5](https://bitbucket.org/wolfpld/tracy/src/v0.5/)
  - It is now easier to use Tracy in custom nCine projects, including on Android
  - Threads can be named so that they can be tracked in the Tracy profiler
  - You can now also retrieve current thread priority or set a new one
  - All log entries are written out as coloured Tracy messages
  - Threads id are invalidated on join and cancel so that they can be reused
- The version of the integrated ImGui has gone from [v1.70](https://github.com/ocornut/imgui/releases/tag/v1.70) to [v1.73](https://github.com/ocornut/imgui/releases/tag/v1.73)
- The GameController mapping database has been updated from the one included in SDL 2.0.9 to the one in SDL 2.0.10
- The `SceneNode` classes has seen the addition of long awaited helper methods in the shape of `setParent()`, `alpha()` and `absAlpha()`
  - The first one makes it easy and intuitive to set a node parent without going the opposite way by calling `parent->addChildNode(this)`
  - The alpha related methods should make it easier to query for a node alpha value
  - There are also new Lua methods for scene nodes: `set_parent()`, `get_alpha()` and `set_alpha()`
- The new `TimeStamp` class can be used to collect timestamps at the full precision of the internal clock
  - The `Time` class has been enhanced with `stop()` and `totalTime()` methods to aggregate multiple time spans
  - Most methods of the `TimeStamp` class are also accessible through the Lua API
- It is now possible to `assign()` a certain numbers of characters from a C string to an `nctl::String` object
- You can now enable the ImGui debug overlay even when the scenegraph is disabled
  - In this case be sure to track OpenGL states using `GLBlending`, `GLDepthTest` and the new `GLCullFace` class
- The `Font` class has a new query method, `numKernings()`, to retrieve the number of kerning pairs in a font (it is called `num_kernings()` in Lua)
- You can access the array of animations in an `AnimatedSprite` and the array of rectangles in a `RectAnimation`
- On Windows the executables use the Windows subsystem instead of the console one
  - They will also expose version properties thanks to the [VERSIONINFO](https://docs.microsoft.com/en-us/windows/win32/menurc/versioninfo-resource) file
- The Android Gradle plugin version has been updated from 3.4.0 to 3.4.1 and Android build tools from 28.0.3 to 29.0.2
  - The changes have been reflected in the template project as well

### Fixes

- Compiler warnings related with `nctl::UniquePtr` wrapping forward declared classes have been fixed. They could have sometimes led to incorrect object deletions and possible leaks. :fearful:
- The OpenAL implementation has been rewritten and many bugs that were lurking in the code should have been squashed :bug:
- Some changes dictated by the layout of the new `ncTemplate` project
  - The CMake scripts now expect a `nCine-data/icons/icon.ico` file instead of the old `nCine.ico`
  - Installers are now built with the `CPACK_PACKAGE_VENDOR` and `CPACK_PACKAGE_HOMEPAGE_URL` variables correctly set
- The returned value for `GL_MAX_UNIFORM_BLOCK_SIZE` is now clamped to 64kB because some OpenGL drivers might return very big numbers

