---
layout: page
title: Modern Renderer
caption: OpenGL 3.3/OpenGL ES 3.0 rendering
permalink: /features/renderer/
_order: 3
_image: render_batcher.png
---

![{{page.title}}](/img/features/{{page._image}})

- Multiple viewports for offscreen rendering or split screen
- Custom shaders support for post-processing or bespoke rendering
- Automatic batching for all kinds of sprites and text nodes
- Sprite meshes for geometric deformations or tight enclosure
- Support for [VAO](https://www.khronos.org/opengl/wiki/Vertex_Specification#Vertex_Array_Object) and [immutable textures](https://www.khronos.org/opengl/wiki/Texture_Storage#Immutable_storage)
- Support OpenGL buffer updating both with or without [mapping](https://www.khronos.org/opengl/wiki/Buffer_Object#Mapping)
- Support for indexed and instanced drawing
- [In-application](https://renderdoc.org/docs/in_application_api.html) integration with [RenderDoc](https://renderdoc.org/)
- Support for Google [ANGLE](http://angleproject.org) libraries on Windows
