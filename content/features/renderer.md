---
title: Modern Renderer
description: OpenGL 3.3 / OpenGL ES 3.0 with advanced features
weight: 1
featureimage: https://ncine.github.io/img/features/render_batcher.png
---

![Modern Renderer](/img/features/render_batcher.png)

- Multiple viewports for offscreen rendering or split-screen
- Custom shaders for post-processing or bespoke effects
- Automatic batching for sprites and text
- Sprite meshes for deformation or tight bounding
- [Binary shader](https://registry.khronos.org/OpenGL/extensions/ARB/ARB_get_program_binary.txt) caching for faster startup
- [VAO](https://www.khronos.org/opengl/wiki/Vertex_Specification#Vertex_Array_Object) and [immutable texture](https://www.khronos.org/opengl/wiki/Texture_Storage#Immutable_storage) support
- Efficient OpenGL buffer updates ([mapped](https://www.khronos.org/opengl/wiki/Buffer_Object#Mapping) or direct)
- Indexed and instanced drawing
- [RenderDoc](https://renderdoc.org/) [In-application](https://renderdoc.org/docs/in_application_api.html) integration
- Optional Google [ANGLE](http://angleproject.org) backend on Windows
