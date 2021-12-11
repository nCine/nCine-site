---
layout: page
title: Build a Developer Distribution
permalink: /build-dev-dist/
---

|**Note**: You can also [download](/download) binaries or automate the compilation with [ncline](https://github.com/nCine/ncline).|

nCine can be built with preset options to make a developer distribution. This type of build is very useful on Windows and macOS, where an installer can be created for the user to develop with the nCine.

For this to work there are some additional requirements:

- [Git](https://git-scm.com/): to retrieve the package version using the `HEAD` commit
- [Doxygen](http://www.doxygen.org/): to build the documentation (optional)
- [NSIS](http://nsis.sourceforge.net/): to create the installer on Windows

In order to build the nCine developer distribution you need to have CMake installed and clone the following repositories:

- **nCine**, this is the main project
- **nCine-libraries**, this project contains CMake scripts to build dependencies for Windows or macOS
- **nCine-android-libraries**, this project contains CMake scripts to build dependencies for Android
- **nCine-data**, the data files for the nCine tests

For the nCine project to automatically find the dependencies and the data it is important to clone all the repositories in the same directory.

### Build the dependencies
- To build the MSVC libraries follow the instructions on the [Windows](/build-windows) page.
- To build the macOS frameworks libraries follow the instructions on the [macOS](/build-macos) page.
- For the Android libraries follow the instructions on the [Android](/build-android) page.

### Build the nCine library
To build the nCine project in *DevDist* mode you need to set the `NCINE_OPTIONS_PRESETS` CMake variable to `DevDist`.

You can do that in the CMake-GUI on Windows or with the terminal on macOS:

    <path/to/cmake> -S nCine -B nCine-DevDist-build -D NCINE_OPTIONS_PRESETS=DevDist

Now either open the `nCine.sln` file for Visual Studio or use `cmake --build <dir>` on macOS to compile as usual.

This time Doxygen will be invoked in order to build the documentation.

### Build the installer
To create the installer build the `PACKAGE` target on Visual Studio and have NSIS create the installer while on macOS invoke `cmake --build <dir> --target PACKAGE` to create a compressed DMG image.

The `PACKAGE` target is also going to create a Zip archive that can be used for a portable installation.
This kind of installation relies on the `nCine_DIR` CMake variable to be set according to the directory containing the `nCineConfig.cmake` file.
The same variable can also be set to a CMake binary build directory so that a project can be linked against libraries built straight from nCine sources.

## Build a Binary Distribution
There is a second valid value for the `NCINE_OPTIONS_PRESETS` CMake variable which is `BinDist`.

With that you can create an installer containing only the run-time libraries and the tests. There will be no documentation, no include files and no Android support.
It comes in handy when you want to show someone the engine features or just test how it works on a particular computer.

