---
layout: page
title: Build for Emscripten
permalink: /build-emscripten/
---

Building for Emscripten is not much different than building for any other platform.
Just be sure to follow the [instructions](https://emscripten.org/docs/getting_started/downloads.html) on the Emscripten website to download and install the SDK.

In order to build the nCine library using Emscripten you need to have CMake installed and clone the following repositories:

- **nCine** `develop` branch, this is the main project
- **nCine-libraries**, this project contains CMake scripts to build dependency libraries (optional)
- **nCine-data**, the data files for the nCine tests (optional but recommended)
- **ncPong**, a Pong game built with the nCine that is useful as an example project (optional)
- **ncPong-data**, the data files for the Pong game (optional)

For the nCine project to automatically find the dependencies and the data it is important to clone all the repositories in the same directory.

### Build the dependency libraries
Open a terminal and invoke the following command to execute CMake:

    emcmake cmake -S nCine-libraries -B nCine-libraries-build

Then invoke CMake to compile them:

    cmake --build nCine-libraries-build

*Note*: Remember to first execute the correct `emsdk_env.*` script for your host system.

### Build the nCine library
Building the nCine library is not much different than building its dependencies:

    emcmake cmake -S nCine -B nCine-build

This time you will have more [CMake options](/cmake-options) that you can tweak if needed.

The same is true for the compilation phase:

    cmake --build nCine-build

*Note*: Remember to first execute the correct `emsdk_env.*` script for your host system.

### Build the ncPong example
The same steps can be applied to the ncPong example game:

    emcmake cmake -S nCPong -B nCPong-build
    cmake --build ncPong-build

*Note*: Remember to first execute the correct `emsdk_env.*` script for your host system.

### CMake notes
You need at least CMake 3.13 in order to use `-S <dir>` and `-B <dir>` in place of the old and undocumented `-H<dir>` and `-B<dir>` options.

You can use `-G Ninja` to use the Ninja generator and speed up the compilation phase accordingly.

If you are not using the `Ninja` generator then you can, since CMake 3.12, pass `-j <num_jobs>` to your `cmake --build` command in order to parallelize the compilation.
