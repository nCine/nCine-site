---
layout: page
title: Build for Android
permalink: /build-android/
---

Before starting download and install [CMake](https://cmake.org/download/).
In order to build the nCine library for Android you need to clone some git repositories:

- **nCine**, this is the main project
- **nCine-android-libraries**, this project contains CMake scripts to build dependency libraries
- **nCine-data**, the data files for the nCine tests (optional but recommended)
- **ncPong**, a Pong game built with the nCine that is useful as an example project (optional)
- **ncPong-data**, the data files for the Pong game (optional)

For the nCine project to automatically find the dependencies and the data it is important to clone all the repositories in the same directory.

### Build the dependency libraries
As for the other projects, the Android dependencies are built using CMake.

You will also need the Android NDK in order to build the stand-alone toolchains.
You can set its path in the `ANDROID_NDK_HOME`, `ANDROID_NDK_ROOT` or `ANDROID_NDK` environment variables, or in the `NDK_DIR` CMake variable.

Two more variables need to be set before running CMake, the `TOOLCHAIN_ROOT` should be set to the path of the directory containing the stand-alone toolchains while the `ARCH` one has to be set to one of the supported architectures: `armeabi-v7a`, `arm64-v8a` or `x86_64`.

You can also set the `CMAKE_BUILD_TYPE` variable between `Release` and `Debug` to change the build type of the resulting libraries.

    cmake -HnCine-android-libraries/ -BnCine-android-libraries-build -DTOOLCHAIN_ROOT=/path/to/toolchains -DARCH=armeabi-v7a -DCMAKE_BUILD_TYPE=Release

Then invoke CMake again to compile them:

    cmake --build nCine-android-libraries-build

### Build the nCine library
To enable the compilation of the Android version of the library you need to switch on the `NCINE_BUILD_ANDROID` CMake variable.
Similar to the dependency libraries project, you can set the NDK path through an environment variable or via CMake.

    cmake -HnCine -BnCine-build -DNCINE_BUILD_ANDROID=ON
    cmake --build nCine-build

To assemble the APK you need to install [Gradle](https://gradle.org/) and to setup two Gradle properties, `cmakeCommand` and `ndkDir`. The first one is the path to the CMake executable while the second is the NDK path.
You can specify those properties using the `gradle.properties` file or on the command line, using `-Pproperty=value`.
It is now possible to build the APKs of the default test.

    cd nCine-build/android
    gradle build -PcmakeCommand=<path/to/cmake> -PndkDir=<path/to/NDK>

There is an additional CMake option that would carry on this step automatically, invoking Gradle and passing the two needed properties.

    cmake -HnCine -BnCine-build -DNCINE_BUILD_ANDROID=ON -DNCINE_ASSEMBLE_APK=ON

### Build the ncPong example
In order to build the Android version of ncPong you need to switch on the `NCPONG_PREPARE_ANDROID` CMake variable and then run Gradle to build the APK.

    cmake -HncPong -BncPong-build -DNCPONG_PREPARE_ANDROID=ON
    cd ncPong-build/android
    gradle build -PcmakeCommand=<path/to/cmake> -PndkDir=<path/to/NDK>
