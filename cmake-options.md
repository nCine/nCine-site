---
layout: page
title: CMake options
permalink: /cmake-options/
---

You can tweak the generation of nCine project files with the following CMake options and variables:

- `NCINE_OPTIONS_PRESETS`

  If this variable is set all the following options and variables will be set accordingly in order to produce a binary only or a developer distribution of the nCine. The two allowed values are "*BinDist*" and "*DevDist*" respectively.

- `NCINE_BUILD_TESTS`

  You can set this option to enable or disable the compilation of test programs.
  Should you enable it make sure to have cloned the data repository as well.

- `NCINE_BUILD_UNIT_TESTS`

  You can set this option to enable or disable the compilation of unit tests.
  When enabled CMake will first download and compile [Google Test](https://github.com/google/googletest), then the unit tests.

- `NCINE_INSTALL_DEV_SUPPORT`

  By enabling this option the nCine installation package will include all the files that support development.

- `NCINE_EXTRA_OPTIMIZATION`

  This option will enable the use of extra optimization compiler flags when in Release mode (mostly autovectorization).

- `NCINE_AUTOVECTORIZATION_REPORT`

  This option will enable report generation from compiler auto-vectorization.

- `NCINE_DYNAMIC_LIBRARY`

  By enabling this option the engine will be compiled as a dynamic library. Otherwise it will be compiled as a static library.
  The latter will allow the compilation of additional tests but needs more work from the developer.

  When the engine is compiled as a static library any project using it needs to add the `NCINE_STATIC` preprocessor definition and link to all the dynamic libraries on which the engine normally depends.

- `NCINE_BUILD_DOCUMENTATION`

  By enabling this option Doxygen will be invoked to create the HTML based API documentation and an install target will be set up by CMake.

- `NCINE_IMPLEMENTATION_DOCUMENTATION`

  When this option is enabled, the generated documentation will include implementation classes.

- `NCINE_EMBED_SHADERS`

  By enabling this option CMake will export all shader files in a single file of C strings to be included in engine sources.

- `NCINE_BUILD_ANDROID`

  This option will build the Android version of the engine.

- `NCINE_ASSEMBLE_APK`

  This option is only available when `NCINE_BUILD_ANDROID` is on. It will automatically assemble the Android APK invoking the Gradle executable, if it could be found.

- `NDK_DIR`

  This string should be set to the path of the directory containing the Android NDK.
  If this string is empty then the `ANDROID_NDK_HOME`, `ANDROID_NDK_ROOT` and `ANDROID_NDK` environment variables will be queried in this order.

- `NCINE_TESTS_DATA_DIR`

  This string sets the path to the data directory to be embedded in example tests.

- `NCINE_CODE_COVERAGE`

  This option enables the gcov coverage of GCC and Clang compilers. It is especially useful in combination with `NCINE_BUILD_UNIT_TESTS`.

- `NCINE_ADDRESS_SANITIZER`

  This option enables the AddressSanitizer memory error detector of GCC and Clang compilers.

- `NCINE_GCC_HARDENING`

  This option enable the memory corruption mitigation methods of the GCC compiler.

- `NCINE_DATA_DIR`

  This string should be set to the path of the directory containing the tests data files.

- `EXTERNAL_ANDROID_DIR`

  This string should be set to the path of the directory containing the Android dependency libraries.

- `EXTERNAL_MSVC_DIR`

  This string should be set to the path of the directory containing the MSVC dependency libraries.
