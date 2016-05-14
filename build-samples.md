---
layout: page
title: Build the samples
permalink: /build-samples/
---

## Arch Linux
Install the package that you have built from [AUR](https://aur.archlinux.org/) with *Pacman* (replace `{version}` with the specific version that you have built):

    sudo pacman -U  ncine-git-{version}-x86_64.pkg.tar.xz

During this process Pacman will either install the package without complaining or it will tell you the missing dependencies. Install them using Pacman and then try again.

Use CMake to create the build directory along with the files needed by the building process.

If you want to create a `Debug` build type inside your home directory:

    cmake -H/usr/share/ncine/ -B$HOME/nCine-tests-build -DCMAKE_BUILD_TYPE=Debug

You can then invoke CMake again to start the building process:

    cmake --build $HOME/nCine-tests-build

If you have [Ninja](https://ninja-build.org/) installed you can tell CMake to use the Ninja generator:

    cmake -GNinja -H/usr/share/ncine/ -B$HOME/nCine-tests-build -DCMAKE_BUILD_TYPE=Debug

## Windows (Visual Studio)
In order to build the samples using the *Developer Distribution* of the nCine you need to install [CMake](https://cmake.org/download/) and [Visual Studio 2017](https://www.visualstudio.com/) (the free Community version will work just fine).

After having installed the nCine *DevDist* you should end up with a subdirectory named `src`.
It contains the source code of all sample applications together with a `CMakeLists.txt` script that you can use to build them.

Open the CMake GUI and set the source code directory to the `src` subdirectory of the project, for example `C:/Program Files/nCine/src`.

You will also have to setup a different directory in which to build the binaries. Be sure to choose a directory in which you have write permissions.

The next step is to press the `Generate` button and choose a generator which is compatible with the distributed library.
At the time of writing the only supported generator is `Visual Studio 15 2017 Win64`.

If everything goes well you will see a bunch of CMake related files in the build directory but no Visual Studio solution yet.
In order to create it you have to press the `Generate` button.

You will now notice that many `vcxproj` files have been created together with the `nCine-tests.sln` solution file. Double click it to bring up Visual Studio.

Choose a build type, for example `Debug` or `Release`, and then select `Build->Build Solution` (or press `F7`) to start compiling the samples.

Select a *StartUp Project* from the `AppTests` folder and then start it with or without debugging choosing the relevant entry from the `Debug` menu.

If you want to step into the source code of a test project by setting breakpoints you have to choose the `Debug` build type and then select `Debug->Start Debugging` (or press `F5`).

### Using the command line

You can also use the command line in order to build with Visual Studio:

    cmake.exe -G"Visual Studio 15 2017 Win64" -t v140 -HnCine/src -BnCine-tests-build

And then invoke CMake again to start building:

    cmake.exe --build nCine-tests-build --config release

## Windows (MSYS2)
Install the MSYS2 package using *Pacman* (replace `{version}` with the specific version that you have downloaded):

    pacman -U  mingw-w64-x86_64-ncine-git-{version}

During this process Pacman will either install the package without complaining or it will tell you the missing dependencies. Install them using Pacman and then try again.

Use CMake to create the build directory along with the files needed by the building process.

If you want to create a `Debug` build type inside your home directory:

    cmake -G"MSYS Makefiles" -H/mingw64/share/ncine/ -B$HOME/nCine-tests-build -DCMAKE_BUILD_TYPE=Debug

Then invoke CMake again to start the building process:

    cmake --build $HOME/nCine-tests-build

## OS X
In order to build the samples using the *Developer Distribution* of the nCine you need to install [CMake](https://cmake.org/download/) and the Command Line Tools for [Xcode](https://developer.apple.com/xcode/).

After having installed the nCine *DevDist* bundle in `Applications` you should end up with a subdirectory named `src`.

Use CMake to create the build directory along with the files needed by the building process.

If you want to create a `Debug` build type inside your home directory:

    /Applications/CMake.app/Contents/bin/cmake -H/Applications/nCine.app/Contents/Resources/src -B$HOME/nCine-tests-build -DCMAKE_BUILD_TYPE=Debug

Then invoke CMake again to start the building process:

    cmake --build $HOME/nCine-tests-build
