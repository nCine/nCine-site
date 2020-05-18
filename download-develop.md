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

### New Features
- The engine now supports custom memory allocators
  - All containers have been updated to allow the specification of an allocator
  - Unique pointers support custom deleters in a compressed pair
  - A new `apptest_allocators` application has been added to test the four included allocator types

### Improvements
- All containers now split the allocation phase from object construction
  - Creating a container will only reserve memory for the elements
  - Inserting or removing elements will trigger construction and destruction

### Fixes
