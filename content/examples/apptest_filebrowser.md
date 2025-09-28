---
title: apptest_filebrowser
slug: apptest-filebrowser
weight: 8
featureimage: https://ncine.github.io/img/apptests/apptest_filebrowser.png
showcase_tags: [ AppTest, Emscripten ]
---

![apptest_filebrowser](/img/apptests/apptest_filebrowser.png)

{{< button-group >}}
{{< button href="/apptests/apptest_filebrowser.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_filebrowser.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

A basic but working file browser based on ImGui, with a list of pinned directories, custom coloring, permissions support, multiple sorting types, file types, and extension filters.

The same code is used in [SpookyGhost](https://encelo.itch.io/spookyghost/devlog/132134/new-file-dialog-window) with the addition of icons.

## Controls

- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface and navigate the filesystem.
- Drag and dropping directories to the pinned list on the left by will add them to the list.
- Drag and dropping a directory/file to the browser on the right will go to that/the containing directory.
- Pressing `Escape` on the keyboard will quit the application.
