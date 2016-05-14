---
layout: page
title: Build for Linux
permalink: /build-linux/
---

In order to build the nCine library using GCC or LLVM on Linux you need to have CMake installed and clone the following repositories:

- **nCine**, this is the main project
- **nCine-libraries**, this project contains CMake scripts to build dependency libraries (optional)
- **nCine-data**, the data files for the nCine tests (optional but recommended)
- **ncPong**, a Pong game built with the nCine that is useful as an example project (optional)
- **ncPong-data**, the data files for the Pong game (optional)

For the nCine project to automatically find the dependencies and the data it is important to clone all the repositories in the same directory.

### Install the dependency libraries
In order to build the nCine library the following libraries need to be installed in the system:

- `glfw` or `sdl2`
- `libogg`
- `libpng`
- `libvorbis`
- `libwebp`
- `openal`

### Build the dependency libraries
In case you don't want the libraries installed system-wide or if you need a debug version, you can use the CMake scripts as per the other platforms:

    cmake -HnCine-libraries -BnCine-libraries-build

Then invoke CMake to compile them:

    cmake --build nCine-libraries-build

### Build the nCine library
Building the nCine library is not much different from building its dependencies:

    cmake -HnCine -BnCine-build

This time you will have more [CMake options](/cmake-options) that you can tweak if needed.

The same is true for the compilation phase:

    cmake --build nCine-build

If you have the dependency libraries installed in the system but you want to use the ones you have built yourself in the previous step, invoke CMake like this:

    cmake -HnCine -BnCine-build -DCMAKE_PREFIX_PATH=$(pwd)/nCine-external

### Build the ncPong example
The same steps can be applied to the ncPong example game:

    cmake -HncPong -BncPong-build
    cmake --build ncPong-build

If you want to run the example game using the dependency libraries you have built yourself:

    LD_LIBRARY_PATH=$(pwd)/nCine-external/lib ./ncPong-build/ncpong
