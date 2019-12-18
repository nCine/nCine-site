---
layout: page
title: Develop Branch
permalink: /download-develop/
---

The [develop](https://github.com/nCine/nCine/tree/develop) branch will be the base for a future release.

## Changelog

### Breaking Changes

- Removed `flipX()` and `flipY()` sprite methods
  - They have been superseded by `setFlippedX()` and `setFlippedY()`
- Removed `setOpaqueTexture()` sprite method
  - You can achieve the same result with the general `setBlendingEnabled(false)`
- The `Matrix4x4<T>::scale()` static method has been renamed to `Matrix4x4<T>::scaling()`

### New Features

- Scene nodes support anchor points and non-uniform scaling
  - There is a new `apptest_anchor` application that shows all new node features
- Drawable nodes support custom alpha blending factors
- [Nuklear](https://github.com/Immediate-Mode-UI/Nuklear) integration for fully skinnable user interfaces
- ImGui and Nuklear integrations support custom fonts loading
- Added a new unclamped three channels `ColorHdr` class
- The `IAppEventHandler` class now receives `onSuspend()` and `onResume()` events

### Improvements

- The logging system is initialized earlier and can be used inside `onPreInit()`
- Handling of windows resizing events has been fixed
- Emscripten applications react to window resizing and fullscreen events
- Emscripten applications can now load and save local files
- Sprite flipping methods now take a status flag
- The version of the integrated Tracy has gone from [v0.5](https://bitbucket.org/wolfpld/tracy/src/v0.5/) to [v0.6.1](https://bitbucket.org/wolfpld/tracy/src/v0.6.1/)
- The version of the integrated ImGui has gone from [v1.73](https://github.com/ocornut/imgui/releases/tag/v1.73) to [v1.74](https://github.com/ocornut/imgui/releases/tag/v1.74)
- Deletion of children scene nodes upon parent destruction has been made optional
- The `Matrix4x4<T>` can now translate, rotate and scale in place, avoiding a full matrix multiplication
- Automatic sprite batching is now available on Emscripten
  - You can choose the fixed batch size with a variable in the `AppConfiguration` class
- Sorting of render commands is now stable
  - If two commands have the same material sorting key then a secondary key based on node creation time is used

### Fixes

- The Emscripten port compiles with upstream LLVM WebAssembly backend
- Some minor fixes in the color classes code
- Culling of drawable nodes works with negative scaling factors
- Scene nodes are now correctly transformed before children thus eliminating any update delay with nodes chains
- Caching of `TextNode` boundaries does not introduce a one frame delay on update
- The Lua stack is now cleaned after a failure in calling a function
  - Previously the stack would easily overflow if some callbacks were not defined
- String lenght is now updated if a string is truncated when using a formatting method
