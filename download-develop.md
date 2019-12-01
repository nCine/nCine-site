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

### New Features

- Sprite nodes support anchor points and non-uniform scaling
  - There is a new `apptest_anchor` application that shows all sprite features
- Drawable nodes support custom alpha blending factors
- [Nuklear](https://github.com/vurtun/nuklear) integration for fully skinnable user interfaces
- ImGui and Nuklear integrations support custom fonts loading
- Added a new unclamped three channels `ColorHdr` class
- The `IAppEventHandler` class now receives `onSuspend()` and `onResume()` events

### Improvements

- The logging system is initialized earlier and you can now use it inside `onPreInit()`
- Handling of windows resizing events has been corrected
- Emscripten applications react to window resizing and fullscreen
- Emscripten applications can now load and save local files
- Sprite flipping methods now take a status flag
- The version of the integrated Tracy has gone from [v0.5](https://bitbucket.org/wolfpld/tracy/src/v0.5/) to [v0.6.1](https://bitbucket.org/wolfpld/tracy/src/v0.6.1/)
- The version of the integrated ImGui has gone from [v1.73](https://github.com/ocornut/imgui/releases/tag/v1.73) to [v1.74](https://github.com/ocornut/imgui/releases/tag/v1.74)
- Deletion of children nodes upon parent destruction has been made optional

### Fixes

- The Emscripten port compiles with upstream LLVM WebAssembly backend
- Some minor fixes in the color classes code
- Culling of drawable nodes works with negative scaling factors
