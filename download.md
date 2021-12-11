---
layout: page
title: Download Information
permalink: /download/
---

There are different ways to download the nCine and its accompanying projects.

### ncline

If you want an all-in-one solution to download, configure and build the libraries, the engine and the additional projects then check [ncline](https://github.com/nCine/ncline): the nCine command line tool.

You can download a binary archive from one of those [branches](https://github.com/nCine/ncline-artifacts/branches/all), depending on the platform and compiler you use.

### Sources

Being an open source project you will always have access to all source code on [GitHub](https://github.com/nCine).

You start by cloning and build [nCine-libraries](https://github.com/nCine/nCine-libraries) and [nCine-android-libraries](https://github.com/nCine/nCine-android-libraries) and move to [nCine](https://github.com/nCine/nCine) and [nCine-data](https://github.com/nCine/nCine-data).

You can then clone and build additional projects if you want:
- [ncPong](https://github.com/nCine/ncPong) (and [ncPong-data](https://github.com/nCine/ncPong-data))
- [ncInvaders](https://github.com/nCine/ncInvaders) (and [ncInvaders-data](https://github.com/nCine/ncInvaders-data))
- [ncParticleEditor](https://github.com/nCine/ncParticleEditor) (and [ncParticleEditor-data](https://github.com/nCine/ncParticleEditor-data))
- [ncTemplate](https://github.com/nCine/ncTemplate) (and [ncTemplate-data](https://github.com/nCine/ncTemplate-data))

### Binaries

If you prefer to skip the building phase and just download binaries you can follow two different ways.

#### Releases

The first one is through GitHub [releases](https://github.com/nCine/nCine/releases).

The project follows a [calendar versioning](https://calver.org/) scheme (`YYYY.0M.MICRO`):

- [master](/download-master), the `master` branch is the base for the next release
- [2020.05](/download-202005), from May 2020
- [2019.10](/download-201910), from October 2019
- [2019.05](/download-201905), from May 2019

#### Artifacts

The second way of obtaining nCine binaries is through [continuous integration](/ci/) artifacts.
Every project has a specific repository where the C.I. deposits its artifacts and they are all accessible on GitHub.

You can, for example, go to the [nCine-artifacts](https://github.com/nCine/nCine-artifacts/) repository and then to the [all branches](https://github.com/nCine/nCine-artifacts/branches/all) page to have a list of all the supported combinations of OSes, compilers and branches.

As an example you can select the [nCine-master-windows-vs2019](https://github.com/nCine/nCine-artifacts/tree/nCine-master-windows-vs2019) branch and download the installer or the portable archive of the nCine `master` branch compiled for Windows with Visual Studio 2019.

The same thing is true for the [dependency libraries](https://github.com/nCine/nCine-libraries-artifacts/branches/all) (Android ones are included) and for the other projects, like [ncPong](https://github.com/nCine/ncPong-artifacts/branches/all), [ncInvaders](https://github.com/nCine/ncInvaders-artifacts/branches/all), [ncParticleEditor](https://github.com/nCine/ncParticleEditor-artifacts/branches/all) or [ncTemplate](https://github.com/nCine/ncTemplate-artifacts/branches/all).

#### nCine-artifacts

|Branch|Linux|macOS|Windows|MinGW|Emscripten|
|-----:|-----|-----|-------|-----|----------|
|`2020.05`|[GCC](https://github.com/nCine/nCine-artifacts/tree/nCine-2020.05-linux-gcc) [Clang](https://github.com/nCine/nCine-artifacts/tree/nCine-2020.05-linux-clang)|[AppleClang](https://github.com/nCine/nCine-artifacts/tree/nCine-2020.05-darwin-appleclang)|[VS2019](https://github.com/nCine/nCine-artifacts/tree/nCine-2020.05-windows-vs2019) [VS2017](https://github.com/nCine/nCine-artifacts/tree/nCine-2020.05-windows-vs2017)|[GCC](https://github.com/nCine/nCine-artifacts/tree/nCine-2020.05-mingw64-gcc) [Clang](https://github.com/nCine/nCine-artifacts/tree/nCine-2020.05-mingw64-clang)|[emcc](https://github.com/nCine/nCine-artifacts/tree/nCine-2020.05-emscripten-emcc)|
|`master`|[GCC](https://github.com/nCine/nCine-artifacts/tree/nCine-master-linux-gcc) [Clang](https://github.com/nCine/nCine-artifacts/tree/nCine-master-linux-clang)|[AppleClang](https://github.com/nCine/nCine-artifacts/tree/nCine-master-darwin-appleclang)|[VS2022](https://github.com/nCine/nCine-artifacts/tree/nCine-master-windows-vs2022) [VS2019](https://github.com/nCine/nCine-artifacts/tree/nCine-master-windows-vs2019)|[GCC](https://github.com/nCine/nCine-artifacts/tree/nCine-master-mingw64-gcc) [Clang](https://github.com/nCine/nCine-artifacts/tree/nCine-master-mingw64-clang)|[emcc](https://github.com/nCine/nCine-artifacts/tree/nCine-master-emscripten-emcc)|
