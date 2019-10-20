---
layout: page
title: Video Transcript 1
subtitle: Complete transcript of the first video tutorial
permalink: /video-transcript-1/
---

---
The video is available at: [https://www.youtube.com/watch?v=WHgyTdM2_wU](https://www.youtube.com/watch?v=WHgyTdM2_wU)

---

Hi everyone, I’m Encelo, the nCine author, and in this video I will show you how you can start using the engine.

nCine is a 2D multi-platform engine available on Windows, Linux, macOS, MinGW and Android, and capable of running inside a browser thanks to Emscripten.

Today I’m on Windows but most of the things I will say are valid on all supported platforms.

The nCine is written in C++ and uses CMake to carry out the compilation process. The flexibility and amount of combinations supported by the CMake scripts is what makes possible to tailor the engine to your needs.
It is also what makes this process a bit scary the first time.

Fortunately you can completely skip the compilation process and download binaries.
You can download an [engine release](https://github.com/nCine/nCine/releases) from GitHub or you can access the continuous integration artifacts. The artifacts are automatically built at each commit and are the easiest way to use the development version of the engine or test one of the side projects.

But there is yet another way, one that combines flexibility and ease of use: ncline.
ncline is the nCine command line tool, it can download, configure and build dependency libraries, the engine and the side projects.

The first step is downloading the tool itself. You can download the source code if you want, but being ncline a tool to automate compilation let’s just not start by compiling it. :smile:

The repository that contains ncline artifacts has different [branches](https://github.com/nCine/ncline-artifacts/branches/all), pick one according to your platform and compiler. In my case I will download the archive in the Visual Studio 2019 branch.

Let’s extract the archive and then rename the corresponding folder for simplicity.
Inside the folder you will find a license, a readme file with detailed instructions and the tool executable.

Let’s open a Command Prompt or a PowerShell and change directory to the one we have just extracted and renamed.

If we execute the command alone it will output a summary of all supported options.
Additional information will be printed if we add the `--help` option.

In this video I will cover the following use case: I want to compile the ncInvaders project from sources. Compiling from sources will make it possible to perform some experiments later on.

The first step is of course downloading the engine. Let’s also say that I would like to use the latest development version of it.

    ncline set -branch develop

This command invokes ncline in `set` mode and with the -branch option. It will set the branch to _develop_ and save this configuration in the `ncline.ini` file. The output of the command in `set` mode is the current content of this file.

And now back to downloading the engine.

    ncline download engine -artifact

The command has printed an error in red: the Git executable cannot be found, and it is needed to use ncline in `download` mode.
Let’s fix the problem by downloading Git from the [official site](https://git-scm.com/).

If we click the download button an installer for our platform is going to be automatically downloaded. On Windows we can install this or we can choose to download a portable setup, both are supported by ncline.

After the portable archive has been downloaded let’s extract it in the same directory where ncline is.
Now it's time to tell the tool where it can find the Git executable.
The way to do it is, again, using the `set` mode with a specific option, in this case `-git-exe`.

    ncline set -git-exe ..\PortableGit\bin\git.exe

Everything should now be correctly setup for the download to succeed:

    ncline download engine -artifact

With this command we tell ncline that we want to download the engine artifact from GitHub. Without the `-artifact` option the tool would have downloaded the nCine sources and then checked out the _develop_ branch.

As you may have noticed ncline has automatically found the CMake executable installed on my system.
If you don’t have CMake installed go on the official [download page](https://cmake.org/download/) and then choose an option according to your platform.
On Windows you will again be presented with the option to download an installer or a portable archive. If you install the first ncline will find CMake as it did on my system, if you extract the second you need to specify the location of the executable using the `-cmake-exe` option.

The last line of the output is telling us that ncline has automatically set the nCine directory to the one it has just extracted from the engine artifact archive.
We can check that the configuration relative to the nCine directory has changed by invoking the set command alone:

    ncline set

Now that we have downloaded the engine it is time to download the game source. Let’s first specify which game we want to download.

    ncline set -game ncInvaders

Now that ncline knows the name of the game let’s download it. The command is very similar to the one we used for the engine, we are in `download` mode but we use a different target: `game`.
We also omit the `-artifact` option this time as we want to download the source code.

    ncline download game

The command has automatically downloaded both the data and the code repositories from GitHub. For we have set the _develop_ branch for the engine, the tool tries to checkout the _develop_ branch for the game too. In this case the branch exists and it contains all the changes needed to compile ncInvaders against the latest engine version.

But enough with the download command, it is time to compile the game!
The compilation process is divided into two phases: configuration and building. It is the way CMake organizes its work and it is mirrored in the way ncline works.

Let’s first see what the configuration command is going to perform without actually executing anything.

    ncline conf game -dry-run

The `-dry-run` option is supported by every ncline mode and shows the commands that would have been executed. It’s a valuable way to fix issues or to learn more about the compilation or the building processes.

Now that we have checked how CMake is going to be invoked we can let the configuration process to start.

    ncline conf game

There is an important difference in how you would invoke the configuration command on other platforms. As Visual Studio is a multi-configuration CMake generator there is no need to specify the build type at this time. You configure the project once and CMake will generate a solution that can be used to build the game either in debug or release mode.

Let’s build the game in debug mode so that we can set breakpoints and step into the source code.

    ncline build game debug

The game has been compiled and the `ncinvaders.exe` file created in `ncInvaders-build\Debug`.

As I anticipated earlier, to achieve the same result on other platforms we would have invoked the configuration command together with the build type:

    ncline conf game debug

And then the build command without it:

    ncline build game

The game has successfully been compiled but in order to start it we first have to change the current directory to `ncInvaders-build`. By doing so we ensure that the executable will find and load the required libraries that have been copied there.

    cd ncInvaders-build
    Debug\ncinvaders.exe

The `ncInvaders-build` directory is also the directory that contains the Visual Studio solution file. This ensures that when we open the project inside the IDE and press _F5_ to debug it, the game will load the required libraries and then run.

In case we want to start the game by double clicking it, we need to have the required libraries and the game executable in the same directory.

This video ends here but more will come in the future to show you how the nCine works and how you can use it to build your games!
