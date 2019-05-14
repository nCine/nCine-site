---
layout: page
title: CMake options
permalink: /cmake-options/
---

You can tweak the generation of nCine project files with the following CMake options and variables:

- `NCINE_OPTIONS_PRESETS`

  If this variable is set all the following options and variables will be set accordingly in order to produce a binary only or a developer distribution of the nCine.
  The only two allowed values are "*BinDist*" and "*DevDist*" respectively.

- `NCINE_BUILD_TESTS`

  You can set this option to enable or disable the compilation of test programs.
  Should you enable it make sure to have cloned the data repository as well.

- `NCINE_BUILD_UNIT_TESTS`

  You can set this option to enable or disable the compilation of unit tests.
  When enabled CMake will first download and compile [Google Test](https://github.com/google/googletest), then the unit tests.

- `NCINE_BUILD_BENCHMARKS`

  You can set this option to enable or disable the compilation of the micro benchmarks.
  When enabled CMake will first download and compile [Google Benchmark](https://github.com/google/benchmark), then the micro benchmarks.

- `NCINE_INSTALL_DEV_SUPPORT`

  By enabling this option the nCine installation package will include all the files that support development.

- `NCINE_LINKTIME_OPTIMIZATION`

  This option will enable the use of whole program and link time optimizations when in Release mode.

- `NCINE_AUTOVECTORIZATION_REPORT`

  This option will enable report generation from compiler auto-vectorization.

- `NCINE_DYNAMIC_LIBRARY`

  By enabling this option the engine will be compiled as a dynamic library. Otherwise it will be compiled as a static library.
  The latter will allow the compilation of additional tests but needs more work from the user.

  When the engine is compiled as a static library any project using it needs to link to all the dynamic libraries on which the engine normally depends.

- `NCINE_BUILD_DOCUMENTATION`

  By enabling this option Doxygen will be invoked to create the HTML based API documentation and an install target will be set up by CMake.

- `NCINE_IMPLEMENTATION_DOCUMENTATION`

  When this option is enabled, the generated documentation will include implementation classes.

- `NCINE_EMBED_SHADERS`

  By enabling this option CMake will export all shader files in a single file of C strings to be included in the engine sources.

- `NCINE_BUILD_ANDROID`

  This option will build the Android version of the engine.

- `NCINE_STRIP_BINARIES`

  When this option is enabled all Linux and Android libraries and executables will be stripped with the `strip` command.

- `NCINE_WITH_IMGUI`

  When this option is enabled the engine will feature an integration with the [Dear ImGui](https://github.com/ocornut/imgui) user interface toolkit.

- `NCINE_WITH_TRACY`

  When this option is enabled the engine will feature an integration with the [Tracy](https://bitbucket.org/wolfpld/tracy) frame profiler.

- `NCINE_WITH_RENDERDOC`

  When this option is enabled the engine will feature the [in-application](https://renderdoc.org/docs/in_application_api.html) integration with the [RenderDoc](https://renderdoc.org/) graphics debugger.
  If the RenderDoc directory cannot be found automatically you can set its path with the `RENDERDOC_DIR` variable.

- `NCINE_PREFERRED_BACKEND`

  This option specifies the preferred backend on desktop in case both the supported ones are available. The only valid value are `GLFW` and `SDL2`.

- `NCINE_ASSEMBLE_APK`

  This option is only available when `NCINE_BUILD_ANDROID` is on. It will automatically assemble the Android APK invoking the Gradle executable, if it could be found.

- `NCINE_NDK_ARCHITECTURES`

  This is a CMake list of the target architectures when compiling for Android. Supported ones are `armeabi-v7a`, `arm64-v8a` and `x86_64`.

- `NDK_DIR`

  This string should be set to the path of the directory containing the Android NDK.
  If this string is not set to a valid directory then the `ANDROID_NDK_HOME`, `ANDROID_NDK_ROOT` and `ANDROID_NDK` environment variables will be queried in this order.

- `NCINE_TESTS_DATA_DIR`

  This string sets the path to the data directory that will be embedded in example tests.

- `NCINE_CODE_COVERAGE`

  This option enables the *gcov* coverage of GCC and Clang compilers. It is especially useful in combination with `NCINE_BUILD_UNIT_TESTS`.

- `NCINE_ADDRESS_SANITIZER`

  This option enables the *AddressSanitizer* memory error detector of GCC and Clang compilers.

- `NCINE_GCC_HARDENING`

  This option enables the memory corruption mitigation methods of the GCC compiler.

- `NCINE_DATA_DIR`

  This string should be set to the path of the directory containing the tests data files.

- `EXTERNAL_ANDROID_DIR`

  This string should be set to the path of the directory containing the Android dependency libraries.

- `EXTERNAL_MSVC_DIR`

  This string should be set to the path of the directory containing the MSVC dependency libraries.

- `NCINE_STARTUP_TEST`

  This should be set to a valid target name of a test program. It will then become the startup project in Visual Studio.
