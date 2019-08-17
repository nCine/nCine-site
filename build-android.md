---
layout: page
title: Build for Android
permalink: /build-android/
---

Before starting download and install [CMake](https://cmake.org/download/).
In order to build the nCine library for Android you need to clone or download some git repositories:

- **[nCine](https://github.com/nCine/nCine)**, this is the main project
- **[nCine-android-libraries](https://github.com/nCine/nCine-android-libraries)**, this project contains CMake scripts to build dependency libraries
- **[nCine-data](https://github.com/nCine/nCine-data)**, the data files for the nCine tests (optional but recommended)
- **[ncPong](https://github.com/nCine/ncPong)**, a Pong game built with the nCine that is useful as an example project (optional)
- **[ncPong-data](https://github.com/nCine/ncPong-data)**, the data files for the Pong game (optional)

For the nCine project to automatically find the dependencies and the data it is important that all repositories are in the same directory.

### Build the dependency libraries
As for the other projects, the Android dependencies are built using CMake.

You will also need the Android NDK, at least r19, in order to compile the code.
You can set its path in the `ANDROID_NDK_HOME`, `ANDROID_NDK_ROOT` or `ANDROID_NDK` environment variables, or in the `NDK_DIR` CMake variable.

Two more variables need to be set before running CMake:
- `ARCH` has to be set to one of the supported architectures: `armeabi-v7a`, `arm64-v8a` or `x86_64`
- `PLATFORM` has to be set to a number specifying the Android API level

You can also set the `CMAKE_BUILD_TYPE` variable between `Release` and `Debug` to change the build type of the resulting libraries.

    cmake -S nCine-android-libraries/ -B nCine-android-libraries-build -D ARCH=arm64-v8a -D PLATFORM=21 -D CMAKE_BUILD_TYPE=Release

Then invoke CMake again to compile them:

    cmake --build nCine-android-libraries-build

*Note*: The CMake scripts use the [ExternalProject](https://cmake.org/cmake/help/latest/module/ExternalProject.html) module and sometimes they define a patch step.
If you are on Windows you might need to install a `patch` command and either specify it modifying the scripts in question or make it available through the syetem path variable.

### Build the nCine library
To enable the compilation of the Android version of the library you need to switch on the `NCINE_BUILD_ANDROID` CMake variable.
Similar to the dependency libraries project, you can set the NDK path through an environment variable or via CMake.

    cmake -S nCine -B nCine-build -D NCINE_BUILD_ANDROID=ON
    cmake --build nCine-build

To assemble the APK you need to install [Gradle](https://gradle.org/) and to setup two Gradle properties, `cmakeCommand` and `ndkDir`. The first one is the path to the CMake executable while the second is the NDK path.
You can specify those properties using the `gradle.properties` file or on the command line, using `-Pproperty=value`.
It is now possible to build the APKs of the default test.

    cd nCine-build/android
    gradle build -PcmakeCommand=<path/to/cmake> -PndkDir=<path/to/NDK>

Note: When invoking `gradle` on Windows the generator used by CMake to compile is `NMake Makefiles`. It would only work if you have `nmake` in your system path variable.

There is an additional CMake option that would carry on this step automatically, invoking Gradle and passing the two needed properties.

    cmake -S nCine -B nCine-build -D NCINE_BUILD_ANDROID=ON -D NCINE_ASSEMBLE_APK=ON

### Build the samples

If you have nCine installed somewhere and built with Android support enabled you can invoke Gradle as follows and avoid copying the Android directory in a writeable path.

    gradle build -PcmakeCommand=<path/to/cmake> -PndkDir=<path/to/NDK> -p <path/to/installed/android/dir> -PbuildDir=<builddir> --project-cache-dir=<builddir>/.gradle

### Build the ncPong example
In order to build the Android version of ncPong you need to switch on the `NCPONG_PREPARE_ANDROID` CMake variable and then run Gradle to build the APK.

    cmake -S ncPong -B ncPong-build -D PACKAGE_BUILD_ANDROID=ON
    cd ncPong-build/android
    gradle build -PcmakeCommand=<path/to/cmake> -PndkDir=<path/to/NDK>

### C.I. Scripts

For reference you can have a look at the continuous integration scripts:
- [nCine-android-libraries](https://github.com/nCine/nCine-android-libraries/blob/master/azure-pipelines.yml)
- [nCine](https://github.com/nCine/nCine/blob/master/azure-pipelines.yml) (`Linux_macOS` job)
- [ncPong](https://github.com/nCine/ncPong/blob/master/azure-pipelines.yml) (`Android` job)
