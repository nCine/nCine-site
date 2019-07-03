---
layout: page
title: Build for OS X
permalink: /build-osx/
---

Before starting download and install [CMake](https://cmake.org/download/).
In order to build the nCine library using LLVM on OS X you need to clone the following repositories:

- **nCine**, this is the main project
- **nCine-libraries**, this project contains CMake scripts to build dependency frameworks
- **nCine-data**, the data files for the nCine tests (optional but recommended)
- **ncPong**, a Pong game built with the nCine that is useful as an example project (optional)
- **ncPong-data**, the data files for the Pong game (optional)

For the nCine project to automatically find the dependencies and the data it is important to clone all the repositories in the same directory.

### Build the dependency frameworks
Open a terminal window and type the following in order to generate a Unix Makefile:

    /Applications/CMake.app/Contents/bin/cmake -G "Unix Makefiles" -S nCine-libraries -B nCine-libraries-build

Then invoke CMake again in order to compile the frameworks:

    cmake --build nCine-libraries-build

### Build the nCine library
Building the nCine library is not much different from building its dependencies:

    /Applications/CMake.app/Contents/bin/cmake -G "Unix Makefiles" -S nCine -B nCine-build

This time you will have more [CMake options](/cmake-options) that you can tweak if needed.

The same is true for the compilation phase:

    cmake --build nCine-build

### Build the ncPong example
The same steps can be applied to the ncPong example game:

    /Applications/CMake.app/Contents/bin/cmake -G "Unix Makefiles" -S ncPong -B ncPong-build
    cmake --build ncPong-build

### CMake notes
You need at least CMake 3.13 in order to use `-S <dir>` and `-B <dir>` in place of the old and undocumented `-H<dir>` and `-B<dir>` options.

You can use `-G Ninja` to use the Ninja generator and speed up the compilation phase accordingly.

If you are not using the `Ninja` generator then you can, since CMake 3.12, pass `-j <num_jobs>` to your `cmake --build` command in order to parallelize the compilation.