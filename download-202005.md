---
layout: page
title: Release 2020.05
permalink: /download-202005/
---

Release [2020.05](https://github.com/nCine/nCine/releases/tag/2020.05) is the third nCine release.

## Manifest

- [nCine-2020.05-Win64-VS2019.exe](https://github.com/nCine/nCine/releases/download/2020.05/nCine-2020.05-Win64-VS2019.exe) (md5: `277de2df1ba30362a0cfa2b6aa5faada`)
- [nCine-2020.05-Win64-VS2019.zip](https://github.com/nCine/nCine/releases/download/2020.05/nCine-2020.05-Win64-VS2019.zip) (md5: `d8786d042e5f2e105581f031a4404bfa`)
- [nCine-2020.05-Win64-VS2017.exe](https://github.com/nCine/nCine/releases/download/2020.05/nCine-2020.05-Win64-VS2017.exe) (md5: `cdd0aa4779bec50b3bd302394eaa1d03`)
- [nCine-2020.05-Win64-VS2017.zip](https://github.com/nCine/nCine/releases/download/2020.05/nCine-2020.05-Win64-VS2017.zip) (md5: `3164085c0c95285b1166205d46ba3512`)
- [nCine-2020.05-Darwin.dmg](https://github.com/nCine/nCine/releases/download/2020.05/nCine-2020.05-Darwin.dmg) (md5: `1575815808cd51580ac8a11e5c5c5264`)

## Changelog

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

## Libraries

This release is packaged together with:

- [GLEW](http://glew.sourceforge.net/) 2.2.0
- [GLFW](https://www.glfw.org/) 3.3.2 (preferred backend over SDL2)
- [SDL](https://www.libsdl.org/) 2.0.12
- [libpng](http://www.libpng.org/pub/png/libpng.html) 1.6.37
- [zlib](https://www.zlib.net/) 1.2.11
- [libwebp](https://developers.google.com/speed/webp/) 1.0.3
- [OpenAL Soft](https://openal-soft.org/) 1.20.1
- [libogg](https://xiph.org/ogg/) 1.3.3
- [libvorbis](https://xiph.org/vorbis/) 1.3.6
- [Lua](https://www.lua.org/) 5.3.5

The Android libraries have been compiled with [NDK](https://developer.android.com/ndk) r21b for `armeabi-v7a`, `arm64-v8a` and `x86_64`.
