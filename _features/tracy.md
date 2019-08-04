---
layout: page
title: Tracy Instrumentation
caption: Tracy frame profiler integration
permalink: /features/tracy/
_order: 10
_image: tracy.png
---

![{{page.title}}](/img/features/{{page._image}})

- Instrumentation to support the [Tracy](https://bitbucket.org/wolfpld/tracy) frame profiler
- Profiling both CPU and GPU code with zones marking
- Plotting custom values like number of vertices or render commands
- Support for call stack collection
- Support for memory profiling by overloading operators `new` and `delete`
- Support for zones marked inside Lua scripts
