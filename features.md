---
layout: features
title: Features
permalink: /features/
---

## Additional features

- Fully C++11 compliant codebase
- High precision monotonic timers
- Atomic counters
- Thread pool creation, synchronization and affinity assignment
- Basic math library for vectors, 4x4 matrices and quaternions
- Logging system with multiple levels, and console or file output
- [GLFW 3](http://www.glfw.org/), [SDL 2](https://www.libsdl.org/), or [Qt 5](https://www.qt.io/) backends for window and input on PC
- [Nuklear](https://github.com/Immediate-Mode-UI/Nuklear) GUI integration for fully skinnable user interfaces
- FileSystem API to query or manipulate paths, files, and directories
- Custom memory allocators (linear, stack, pool, free list)
- Joystick support with hot swap and SDL 2 [gamepad mappings](https://wiki.libsdl.org/CategoryGameController)
- Android [asset files](https://developer.android.com/reference/android/content/res/AssetManager)  support
- [Google Test](https://github.com/google/googletest) based unit tests with coverage checked with [Gcovr](http://gcovr.com/)
- Microbenchmarked with the [Google Benchmark](https://github.com/google/benchmark) support library
- [Doxygen](http://www.stack.nl/~dimitri/doxygen/) based documentation with [Graphviz](http://www.graphviz.org/) class diagrams
- Periodically checked with [Cppcheck](http://cppcheck.sourceforge.net/) and [Valgrind](http://valgrind.org/)
- Periodically linted with [clang-format](https://clang.llvm.org/docs/ClangFormat.html) (previously with [Artistic Style](http://astyle.sourceforge.net/) and [Uncrustify](http://uncrustify.sourceforge.net/))

---

## Long-term roadmap

- Add an ECS system with space partioning for scene culling
- Abstract the rendering API and add a Vulkan implementation
- Add a collision detection and response system or integrate Box2D
- Separate game, input and audio update in different threads
- Refine the thread-pool system and expose it to the user API
- Implement a Camera node for the scenegraph
- Support custom user shaders and post-processing (needs off-screen render targets)
- Add a 2D skeletal animation system
- Create a cross-platform game editor with Dear ImGui
