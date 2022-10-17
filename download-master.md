---
layout: page
title: Master Branch
permalink: /download-master/
---

The [master](https://github.com/nCine/nCine/tree/master) branch will be the base for a future release.

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

## Next Release Changelog

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
