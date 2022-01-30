---
layout: page
title: Master Branch
permalink: /download-master/
---

The [master](https://github.com/nCine/nCine/tree/master) branch will be the base for a future release.

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
