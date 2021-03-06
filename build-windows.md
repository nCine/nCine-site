---
layout: page
title: Build for Windows
permalink: /build-windows/
---

|**Note**: You can also [download](/download) binaries or automate the compilation with [ncline](https://github.com/nCine/ncline).|

## Visual Studio and MSVC
Before starting download and install [CMake](https://cmake.org/download/).
In order to build the nCine library using Visual Studio you need to clone or download some git repositories:

- **[nCine](https://github.com/nCine/nCine)**, this is the main project
- **[nCine-libraries](https://github.com/nCine/nCine-libraries)**, this project contains CMake scripts to build dependency libraries (optional)
- **[nCine-data](https://github.com/nCine/nCine-data)**, the data files for the nCine tests (optional but recommended)
- **[ncPong](https://github.com/nCine/ncPong)**, a Pong game built with the nCine that is useful as an example project (optional)
- **[ncPong-data](https://github.com/nCine/ncPong-data)**, the data files for the Pong game (optional)

For the nCine project to automatically find the dependencies and the data it is important that all repositories are in the same directory.

### Build the dependency libraries
Open the CMake GUI and set the path to the source code (the `nCine-libraries` directory) and a different path to build the binaries.

Press the **Configure** button and then confirm the creation of the build directory. You can now choose the project generator from a list of different Visual Studio versions and architecture combinations.

Now press the **Generate** button and then open the `nCine-libraries.sln` solution file that has been just generated in the build directory.

Build the solution to have all the dependency libraries generated in the `nCine-external` directory among the others you have cloned from git.

*Note*: The CMake scripts use the [ExternalProject](https://cmake.org/cmake/help/latest/module/ExternalProject.html) module and sometimes they define a patch step.
In this case you need to install a `patch` command and either specify it modifying the scripts in question or make it available through the system path variable.

### Build the nCine library
Building the nCine library is not much different than building its dependencies: the first step is opening the CMake GUI.

Configure the generation step just as you made before but this time you will have more [CMake options](/cmake-options) in the table that you can tweak if needed.

Tweak the options to suit your needs then generate the `nCine.sln` file for Visual Studio.

### Build the ncPong example
The same steps can be applied to the ncPong example game.

Open the CMake gui, select the ncPong source directory and build one, configure the project and generate a `ncPong.sln` solution file.

### Build with the command line
You can use the command line to invoke CMake and build on Windows with Visual Studio.

Just be careful to pass the correct generator and toolset when you configure a build:

    cmake -G "Visual Studio 16 2019" -A x64 -S <dir> -B <dir>

And specify the build configuration type when you start the building process:

    cmake.exe --build <dir> --config release

## MSYS2 and MinGW-w64
Before starting be sure that the CMake package `mingw-w64-x86_64-cmake` is installed in the system.
Also clone or download the following git repositories:

- **[nCine](https://github.com/nCine/nCine)**, this is the main project
- **[nCine-data](https://github.com/nCine/nCine-data)**, the data files for the nCine tests (optional but recommended)
- **[ncPong](https://github.com/nCine/ncPong)**, a Pong game built with the nCine that is useful as an example project (optional)
- **[ncPong-data](https://github.com/nCine/ncPong-data)**, the data files for the Pong game (optional)

For the nCine project to automatically find the dependencies and the data it is important that all repositories are in the same directory.

## Install the dependency libraries
In order to build the nCine library the following libraries need to be installed in the system:

- `mingw-w64-x86_64-glew`
- `mingw-w64-x86_64-glfw` or `mingw-w64-x86_64-SDL2`
- `mingw-w64-x86_64-libogg`
- `mingw-w64-x86_64-libpng`
- `mingw-w64-x86_64-libvorbis`
- `mingw-w64-x86_64-libwebp`
- `mingw-w64-x86_64-openal`
- `mingw-w64-x86_64-lua`

### Build the dependency libraries
In case you don't want the libraries installed system-wide or if you need a debug version, you can use the CMake scripts as per the other platforms:

    cmake -G "MSYS Makefiles" -S nCine-libraries -B nCine-libraries-build

Then invoke CMake to compile them:

    cmake --build nCine-libraries-build

### Build the nCine library
To generate the Makefile for the nCine library open a MSYS2 shell and type:

    cmake -G "MSYS Makefiles" -S nCine -B nCine-build

This time you will have more [CMake options](/cmake-options) that you can tweak if needed.

To compile it invoke the CMake command again:

    cmake --build nCine-build

If you have the dependency libraries installed in the system but you want to use the ones you have built yourself in the previous step, invoke CMake like this:

    cmake -G "MSYS Makefiles" -S nCine -B nCine-build -D CMAKE_PREFIX_PATH=$(pwd)/nCine-external

### Build the ncPong example
The same steps can be applied to the ncPong example game:

    cmake -G "MSYS Makefiles" -S ncPong -B ncPong-build
    cmake --build ncPong-build

## CMake notes
You need at least CMake 3.13 in order to use `-S <dir>` and `-B <dir>` in place of the old and undocumented `-H<dir>` and `-B<dir>` options.

You need at least CMake 3.13 also to specify the generator platform via the `-A` option.

You can use `-G Ninja` to use the Ninja generator and speed up the compilation phase accordingly.

If you are not using the `Ninja` generator then you can, since CMake 3.12, pass `-j <num_jobs>` to your `cmake --build` command in order to parallelize the compilation.

## C.I. Scripts

For reference you can have a look at the continuous integration scripts:
- [nCine-libraries](https://github.com/nCine/nCine-libraries/blob/master/.github/workflows/windows.yml)
- [nCine](https://github.com/nCine/nCine/blob/master/.github/workflows/windows.yml)
- [ncPong](https://github.com/nCine/ncPong/blob/master/.github/workflows/windows.yml)
