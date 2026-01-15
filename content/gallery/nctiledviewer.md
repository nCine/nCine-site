---
title: ncTiledViewer
date: "2021-01-25"
featureimage: https://ncine.github.io/img/gallery/ncTiledViewer.png
showcase_tags: [ Tool, Emscripten ]
---

![ncTiledViewer](/img/gallery/ncTiledViewer.png)

{{< button-group >}}
{{< button href="/nctiledviewer" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/ncTiledViewer" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

{{< div-group >}}
{{< artifact-download repo="nCine/ncTiledViewer-artifacts" branch="ncTiledViewer-master-windows-vs2022" >}}
{{< icon "download" >}} Windows
{{< /artifact-download >}}

{{< artifact-download repo="nCine/ncTiledViewer-artifacts" branch="ncTiledViewer-master-macos15-appleclang" >}}
{{< icon "download" >}} macOS 15 (AppleSilicon)
{{< /artifact-download >}}

{{< artifact-download repo="nCine/ncTiledViewer-artifacts" branch="ncTiledViewer-master-linux-gcc" >}}
{{< icon "download" >}} Linux
{{< /artifact-download >}}

{{< small-button href="https://github.com/nCine/ncTiledViewer-artifacts/branches/all?query=ncTiledViewer-master" target="_blank" >}}
{{< icon "link" >}} All Platforms
{{< /small-button >}}
{{< /div-group >}}

**ncTiledViewer** is a viewer for some of the map types that you can create with [Tiled](https://www.mapeditor.org/).

## Controls

- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface
- Pressing `B` on the keyboard or `A` on the gamepad will toggle batching
- Pressing `C` on the keyboard or `B` on the gamepad will toggle culling
- Pressing `H` on the keyboard or `Start` on the gamepad will hide or show the ImGui interface
- Pressing `Escape` on the keyboard will close the file dialog window
- Pressing `CTRL + Q` on the keyboard or `Guide` on the gamepad will quit the application
