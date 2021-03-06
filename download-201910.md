---
layout: page
title: Release 2019.10
permalink: /download-201910/
---

Release [2019.10](https://github.com/nCine/nCine/releases/tag/2019.10) is the second nCine release.

## Manifest

- [nCine-2019.10-Win64-VS2019.exe](https://github.com/nCine/nCine/releases/download/2019.10/nCine-2019.10-Win64-VS2019.exe) (md5: `8e505ffe0ec256688e85e00dbbe7ec17`)
- [nCine-2019.10-Win64-VS2019.zip](https://github.com/nCine/nCine/releases/download/2019.10/nCine-2019.10-Win64-VS2019.zip) (md5: `63d93c1cdba532c002fd59b0094e1dd2`)
- [nCine-2019.10-Win64-VS2017.exe](https://github.com/nCine/nCine/releases/download/2019.10/nCine-2019.10-Win64-VS2017.exe) (md5: `99d9fc5b22a51286fe76bf8634316390`)
- [nCine-2019.10-Win64-VS2017.zip](https://github.com/nCine/nCine/releases/download/2019.10/nCine-2019.10-Win64-VS2017.zip) (md5: `1cff45df92503c773ca2dc1d2f31dc78`)
- [nCine-2019.10-Darwin.dmg](https://github.com/nCine/nCine/releases/download/2019.10/nCine-2019.10-Darwin.dmg) (md5: `1554b5a3d906d7c3bd62f50c53eb2f85`)

## Changelog

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

## Libraries

This release is packaged together with:

- [GLEW](http://glew.sourceforge.net/) 2.1.0
- [GLFW](https://www.glfw.org/) 3.3 (preferred backend over SDL2)
- [SDL](https://www.libsdl.org/) 2.0.10
- [libpng](http://www.libpng.org/pub/png/libpng.html) 1.6.37
- [zlib](https://www.zlib.net/) 1.2.11
- [libwebp](https://developers.google.com/speed/webp/) 1.0.3
- [OpenAL Soft](https://openal-soft.org/) 1.19.1
- [libogg](https://xiph.org/ogg/) 1.3.3
- [libvorbis](https://xiph.org/vorbis/) 1.3.6
- [Lua](https://www.lua.org/) 5.3.5

The Android libraries have been compiled with [NDK](https://developer.android.com/ndk) r20 for `armeabi-v7a`, `arm64-v8a` and `x86_64`.
