---
layout: page
title: Why nCine?
permalink: /why/
---

There are so many game engines out there that yet another one is just a complete waste of time, for both the author and the potential users. Am I right? :unamused:

I know it wasn't a waste for me, I learned plenty of stuff and had lot of fun programming it.
It might have ceased being a waste for others too: the project grew a lot during those years and could come in handy sometimes.

It will likely be less fascinating to users of big engines like [Unreal](https://www.unrealengine.com), [Unity](https://unity.com/) or [Godot](https://godotengine.org/), but be interesting for users of smaller ones like [LibGDX](https://libgdx.badlogicgames.com/) and [Cocos2d-x](https://cocos2d-x.org/), or frameworks like [LÖVE](https://love2d.org/), [SFML](https://www.sfml-dev.org/) and [LWJGL](https://www.lwjgl.org/).

Some of the use cases for it are:

**1.** It could be used for small multi-platform **2D games**. You can program your game in C++ for maximum performance and the ability to customize the engine itself or you can use the [Lua](https://www.lua.org/) bindings for prototypes or game jams.

**2.** You can use the [ImGui](https://github.com/ocornut/imgui) integration and put together **game developing tools** like I did with my [particle editor](https://www.youtube.com/watch?v=RLNI5NMCJ1E). They would be multi-platform and work on Android as well. :smile:

**3.** When compiled as a static library it becomes a **graphics demo framework** and every low-level implementation class would be accessible, including the OpenGL and threading layers.
   All the other features would still be available, like the multi-platform abstraction, the template library or the [RenderDoc](https://renderdoc.org/) and [Tracy](https://bitbucket.org/wolfpld/tracy/src/master/) integrations.

**4.** Last, but not least, being a minimal open source engine programmed by a single person, I hope it might represent a starting point to **learn and experiment** with game engine programming. :wink:
