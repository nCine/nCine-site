nc = ncine

function nc.on_init()
	spritesheet_ = nc.texture.new(nc.fs.get_data_path().."textures/spritesheet.png")

	local resolution = nc.application.get_resolution()
	anim_sprite_ = nc.animated_sprite.new(nc.application.get_rootnode(), spritesheet_, resolution.x * 0.5, resolution.y * 0.5)

	local animation = { frame_duration = 0.12, loop_mode = nc.loop_mode.ENABLED, rewind_mode = nc.rewind_mode.FROM_START, rect_size = { x = 48, y = 48 }, source_rect = { x = 0, y = 0, w = 144, h = 96 } }
	nc.animated_sprite.add_animation(anim_sprite_, animation)

	nc.animated_sprite.set_animation_index(anim_sprite_, 0)
	nc.animated_sprite.set_paused(anim_sprite_, false)
end

function nc.on_shutdown()
	nc.animated_sprite.delete(anim_sprite_)
	nc.texture.delete(spritesheet_)
end

function nc.on_mouse_button_released(event)
	if event.button == nc.mouse_button.LEFT then
		local is_paused = nc.animated_sprite.is_paused(anim_sprite_)
		nc.animated_sprite.set_paused(anim_sprite_, not is_paused)
	elseif event.button == nc.mouse_button.RIGHT then
		nc.animated_sprite.set_paused(anim_sprite_, true)

		local num_frames = nc.animated_sprite.num_frames(anim_sprite_)
		local frame_index = nc.animated_sprite.get_frame(anim_sprite_)
		frame_index = (frame_index + 1) % num_frames

		nc.animated_sprite.set_frame(anim_sprite_, frame_index)
	end
end
