---
title: apptest_audio
slug: apptest-audio
weight: 4
featureimage: https://ncine.github.io/img/apptests/apptest_audio.png
showcase_tags: [ AppTest, Emscripten ]
---

![apptest_audio](/img/apptests/apptest_audio.png)

{{< button-group >}}
{{< button href="/apptests/apptest_audio.html" target="_blank" >}}
{{< icon "globe" >}} Run with Emscripten
{{< /button >}}

{{< button href="https://github.com/nCine/nCine/blob/master/tests/apptest_audio.cpp" target="_blank" >}}
{{< icon "github" >}} GitHub
{{< /button >}}
{{< /button-group >}}

This test shows how to play sound effects with an `AudioBufferPlayer`, and how to play music using an `AudioStreamPlayer`.
It also allows you to change some player properties and apply effects and filters.
If the nCine has been compiled with ImGui some of those properties can be tweaked with an interface.

## Controls

- Pressing `M` on the keyboard or `A` on the gamepad will play or pause the music
- Pressing `Space` on the keyboard or `B` on the gamepad will play or pause the sound
- Pressing `A`/`S`/`D` will play/stop/pause the sound
- Pressing `L` will toggle sound looping
- Pressing `T` will start or stop the stress test for audio sources

Change the pitch, gain, and horizontal position of the sound with the numeric keypad or the gamepad:

- Pressing `KP7`/`KP8`/`KP9` will decrease/reset/increase the pitch (use the right trigger on the gamepad)
- Pressing `KP4`/`KP5`/`KP6` will decrease/reset/increase the gain (use the left trigger on the gamepad
- Pressing `KP1`/`KP2`/`KP3` will decrease/reset/increase the horizontal position (use the left stick on the gamepad)
- Pressing `KP0` on the keyboard or `Y` on the gamepad will reset all properties to their default values

- Pressing the left/right arrow keys or D-pad directions, or the left bumper will change the music file
- Pressing the up/down arrow keys or D-pad directions, or the right bumper will change the sound file
- Pressing the `Start` on the gamepad will start or stop the stress test for audio sources
- Use the mouse, the keyboard, the gamepad, or the touch screen to interact with the ImGui interface.
- Pressing `CTRL + H` on the keyboard will show or hide the ImGui interface
- Pressing `Escape` on the keyboard will quit the application
