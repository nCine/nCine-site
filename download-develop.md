---
layout: page
title: Develop Branch
permalink: /download-develop/
---

The [develop](https://github.com/nCine/nCine/tree/develop) branch will be the base for a future release.

## Changelog

### Breaking Changes
- The `nctl::Array` and `nctl::StaticArray` subscript operator will not grow the array size
- The return type of the `createAppEventHandler` function has been changed to a unique pointer
- The `SceneNode` query methods for drawing and updating have been prefixed with `is`, for example `isEnabled()`
- The `setWidth()` and `setHeight()` methods of the `BaseSprite` class have been removed
- The `errorToString()` function of the `LuaDebug` namespace has been renamed to correct a typo
- The parameters order of `LuaStateManager::runFromMemory()` has changed

### New Features
- The engine now supports custom memory allocators
  - All containers have been updated to allow the specification of an allocator
  - Unique pointers support custom deleters in a compressed pair
  - A new `apptest_allocators` application has been added to test the four included allocator types
- The FileSystem API now supports Android asset FileSystem
- It is now possible to load textures, sounds and fonts from memory buffers

### Improvements
- The version of the integrated Tracy has been updated to [v0.7.2](https://github.com/wolfpld/tracy/releases/tag/v0.7.2)
- The version of the integrated ImGui has been updated to [v1.78](https://github.com/ocornut/imgui/releases/tag/v1.78)
- All containers now split the allocation phase from object construction
  - Creating a container will only reserve memory for the elements
  - Inserting or removing elements will trigger construction and destruction
- On Android unfound libraries will not be linked anymore to the game library
  - The Java activity will not load the nCine or OpenAL libraries if unneeded
- It is now possible to set the RGB components of a color with a hexadecimal code
- The `nctl::String` class can now decode [Unicode](http://unicode.org) code points from UTF-8 strings
- The `Font` class now supports Unicode characters exported in the Fnt descriptor file

### Fixes
- GCC hardening compiler flags have been fixed with the explicit addition of PIE flags
- The root node of the scenegraph now honors its own transformations
