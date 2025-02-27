---
layout: page
title: Download Information
permalink: /download/
---

There are different ways to download the nCine and its accompanying projects.

But first it might be useful to read the [Getting Started](https://github.com/nCine/nCine/wiki/Getting-Started) guide from the wiki.

### Binaries

The easiest way is to download binaries that have been compiled by GitHub Actions.
Every project has a specific repository where the C.I. deposits its artifacts and they are all accessible on GitHub.
To check the continuous integration state you can visit the [artifacts](/artifacts) page.

You can, for example, go to the [nCine-artifacts](https://github.com/nCine/nCine-artifacts/) repository and then to the [all branches](https://github.com/nCine/nCine-artifacts/branches/all) page to have a list of all the supported combinations of OSes, compilers and branches.

As an example, you can select the [nCine-master-windows-vs2022](https://github.com/nCine/nCine-artifacts/tree/nCine-master-windows-vs2022) branch and download the installer or the portable archive of the nCine `master` branch compiled for Windows with Visual Studio 2022.

The same thing is true for the [dependency libraries](https://github.com/nCine/nCine-libraries-artifacts/branches/all) (Android ones are included) and for the other projects, like [ncPong](https://github.com/nCine/ncPong-artifacts/branches/all), [ncInvaders](https://github.com/nCine/ncInvaders-artifacts/branches/all), [ncParticleEditor](https://github.com/nCine/ncParticleEditor-artifacts/branches/all) or [ncTemplate](https://github.com/nCine/ncTemplate-artifacts/branches/all).

#### nCine-artifacts

|Branch|Linux|macOS|Windows|MinGW|Emscripten|
|-----:|-----|-----|-------|-----|----------|
|`master`|[GCC](https://github.com/nCine/nCine-artifacts/tree/nCine-master-linux-gcc) [Clang](https://github.com/nCine/nCine-artifacts/tree/nCine-master-linux-clang)|[macOS 14 (arm64)](https://github.com/nCine/nCine-artifacts/tree/nCine-master-macos14-appleclang) [macOS 12 (intel)](https://github.com/nCine/nCine-artifacts/tree/nCine-master-macos12-appleclang)|[VS2022](https://github.com/nCine/nCine-artifacts/tree/nCine-master-windows-vs2022) [VS2019](https://github.com/nCine/nCine-artifacts/tree/nCine-master-windows-vs2019)|[GCC](https://github.com/nCine/nCine-artifacts/tree/nCine-master-mingw64-gcc) [Clang](https://github.com/nCine/nCine-artifacts/tree/nCine-master-mingw64-clang)|[emcc](https://github.com/nCine/nCine-artifacts/tree/nCine-master-emscripten-emcc)|

### ncline

If you want an all-in-one solution to download, configure and build the libraries, the engine and the additional projects then check [ncline](https://github.com/nCine/ncline): the nCine command line tool.

You can download a binary archive from one of those [branches](https://github.com/nCine/ncline-artifacts/branches/all), depending on the platform and compiler you use.

### Sources

Being an open source project you will always have access to all source code on [GitHub](https://github.com/nCine).

Start by cloning and build [nCine-libraries](https://github.com/nCine/nCine-libraries) and [nCine-android-libraries](https://github.com/nCine/nCine-android-libraries), then move to [nCine](https://github.com/nCine/nCine) and [nCine-data](https://github.com/nCine/nCine-data).

You can then clone and build additional projects if you want:
- [ncPong](https://github.com/nCine/ncPong) (and [ncPong-data](https://github.com/nCine/ncPong-data))
- [ncInvaders](https://github.com/nCine/ncInvaders) (and [ncInvaders-data](https://github.com/nCine/ncInvaders-data))
- [ncParticleEditor](https://github.com/nCine/ncParticleEditor) (and [ncParticleEditor-data](https://github.com/nCine/ncParticleEditor-data))
- [ncTemplate](https://github.com/nCine/ncTemplate) (and [ncTemplate-data](https://github.com/nCine/ncTemplate-data))

Have a look at the [build instructions](https://github.com/nCine/nCine/wiki/Build-Instructions) on the project wiki.
