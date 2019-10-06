---
layout: page
title: Build for Linux
permalink: /build-linux/
---

|**Note**: You can also [download](/download) binaries or automate the compilation with [ncline](https://github.com/nCine/ncline).|

In order to build the nCine library using GCC or Clang on Linux you need to have CMake installed and clone or download the following repositories:

- **[nCine](https://github.com/nCine/nCine)**, this is the main project
- **[nCine-libraries](https://github.com/nCine/nCine-libraries)**, this project contains CMake scripts to build dependency libraries (optional)
- **[nCine-data](https://github.com/nCine/nCine-data)**, the data files for the nCine tests (optional but recommended)
- **[ncPong](https://github.com/nCine/ncPong)**, a Pong game built with the nCine that is useful as an example project (optional)
- **[ncPong-data](https://github.com/nCine/ncPong-data)**, the data files for the Pong game (optional)

For the nCine project to automatically find the dependencies and the data it is important that all repositories are in the same directory.

### Install the dependency libraries
In order to build the nCine library the following libraries need to be installed in the system:

- `glfw` or `sdl2`
- `libogg`
- `libpng`
- `libvorbis`
- `libwebp`
- `openal`
- `lua`

### Build the dependency libraries
In case you don't want the libraries installed system-wide or if you need a debug version, you can use the CMake scripts as per the other platforms:

    cmake -S nCine-libraries -B nCine-libraries-build

Then invoke CMake to compile them:

    cmake --build nCine-libraries-build

### Build the nCine library
Building the nCine library is not much different than building its dependencies:

    cmake -S nCine -B nCine-build

This time you will have more [CMake options](/cmake-options) that you can tweak if needed.

The same is true for the compilation phase:

    cmake --build nCine-build

If you have the dependency libraries installed in the system but you want to use the ones you have built yourself in the previous step, invoke CMake like this:

    cmake -S nCine -B nCine-build -D CMAKE_PREFIX_PATH=$(pwd)/nCine-external

### Build the ncPong example
The same steps can be applied to the ncPong example game:

    cmake -S ncPong -B ncPong-build
    cmake --build ncPong-build

If you want to run the example game using the dependency libraries you have built yourself:

    LD_LIBRARY_PATH=$(pwd)/nCine-external/lib ./ncPong-build/ncpong

### CMake notes
You need at least CMake 3.13 in order to use `-S <dir>` and `-B <dir>` in place of the old and undocumented `-H<dir>` and `-B<dir>` options.

You can use `-G Ninja` to use the Ninja generator and speed up the compilation phase accordingly.

If you are not using the `Ninja` generator then you can, since CMake 3.12, pass `-j <num_jobs>` to your `cmake --build` command in order to parallelize the compilation.

### C.I. Scripts

For reference you can have a look at the continuous integration scripts:
- [nCine-libraries](https://github.com/nCine/nCine-libraries/blob/master/azure-pipelines.yml) (`Non_Windows` job)
- [nCine](https://github.com/nCine/nCine/blob/master/azure-pipelines.yml) (`Linux_macOS` job)
- [ncPong](https://github.com/nCine/ncPong/blob/master/azure-pipelines.yml) (`Linux_macOS` job)
