---
layout: page
title: Video Transcript 2
subtitle: Complete transcript of the second video tutorial
permalink: /video-transcript-2/
---

---
The video is available at: [https://www.youtube.com/watch?v=N_y7IT8nyJA](https://www.youtube.com/watch?v=N_y7IT8nyJA)

---

Hi everyone and welcome to the second video on how to start using the nCine and the ncline tool.

I’m Encelo, the nCine author, and today I will show you how to download the template project and use it as a starting point for your game. I will also show you how to create a binary distribution so that others can easily download and play your game.

I have already discussed in the previous video how to download Git and CMake so I will assume you already have ncline set up and ready to take commands.

    ncline set

Let’s start by downloading the engine artifact:

    ncline download engine -artifact

The engine has been downloaded and the nCine directory automatically set up, we can proceed by downloading the template project.
Remember that ncline needs to know the name of the project we want to download:

    ncline set -game ncTemplate

We can now download the template code and data repositories:

    ncline download game

Two new directories, `ncTemplate` and `ncTemplate-data`, have just been downloaded. We will use them as a starting point for our new project. Let’s start by renaming them respectively to `MyProject` and `MyProject-data`.

We should also delete the hidden `.git` directory that they both contain for we are starting anew and it makes no sense to retain the Git history of the template project. :smile:

We can initialize a new git repository now:

    git init MyProject
    git init MyProject-data

Let’s also communicate to ncline the name we have chosen:

    ncline set -game MyProject

We have renamed the directories but we haven’t yet customized the template to suit the needs of the new project. Let’s do just that by editing the `package_info.cmake` text file that is contained inside the `cmake` directory of our code repository.
This file specifies some project information like its name and description or the list of source files. For a detailed explanation of all the variables that you can tweak and set have a look at the `README.md` file.

After you are satisfied with the changes don’t forget to also rewrite the `LICENSE` and `README.md` files contained in both repositories according to your needs.

The project is now ready for an initial commit:

    cd MyProject
    git add .
    git commit -m “Initial commit”
    cd ..\MyProject-data
    git add .
    git commit -m “Initial commit”
    cd ..

But we haven’t yet tested if it actually compiles and runs so let’s configure it and then build it in debug mode.

    ncline conf game
    ncline build game debug

The project has compiled successfully and we can now try to run it.

    cd MyProject-build
    Debug\myproject.exe

It seems to be working just fine, although a black window is not very exciting.
Let’s fix this issue by putting something on the screen!

The first step is to open the Visual Studio solution in the `MyProject-build` directory.

The project has been loaded in the IDE and we can modify the source code.
Let’s first add a `Texture` and a `Sprite` smart pointers to the header file.
Secondly let’s construct the texture using an nCine icon as the image and then the sprite.
The last step is to update the sprite position at each frame using some basic trigonometry that will make it spin at the center of the screen.

Let’s save the changes in Git with a new commit to the code repository:

    cd MyProject
    git add .
    git commit -m “Add a rotating sprite”
    cd ..

Now that our little test game is ready how can we distribute it? What’s the best way to make it reach the hands of the players?

Fortunately for us there exists an ncline command dedicated to this very task, the `dist` command.

It accepts two targets: `engine` or `game`. We are interested in the latter. It will recompile the game in release mode for maximum performance and then package all the required libraries, the executable and the data.

But first we need to [download](https://nsis.sourceforge.io/Download) and install NSIS, also known as the Nullsoft Scriptable Install System. It will be responsible for the Windows executable creation.

We are now ready to come back to ncline and witness the power of the `dist` command:

    ncline dist game

Inside the `MyProject-BinDist` directory you will find both an installer and a portable archive. You can choose which one is best suited for you game distribution.

Let’s test one of the two, for example the portable archive, and see if we can run the game. For this purpose let’s extract the archive content and run the executable inside the `bin` directory.

The game works just fine by double clicking it: we can rest assured that our players will be able to enjoy the game.

This ends the second video about the first steps with nCine and ncline but more will come in the future.
