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

function nc.on_frame_start()
	local pos = nc.animated_sprite.get_position(anim_sprite_)
	local step = 100 * nc.application.get_frame_time()
	local moved = false

	local key_state = nc.input.key_state()
	if nc.input.is_key_down(key_state, nc.keysym.UP) or nc.input.is_key_down(key_state, nc.keysym.W) then
		pos.y = pos.y + step
		nc.animated_sprite.set_rotation(anim_sprite_, 180)
		moved = true
	elseif nc.input.is_key_down(key_state, nc.keysym.DOWN) or nc.input.is_key_down(key_state, nc.keysym.S) then
		pos.y = pos.y - step
		nc.animated_sprite.set_rotation(anim_sprite_, 0)
		moved = true
	elseif nc.input.is_key_down(key_state, nc.keysym.LEFT) or nc.input.is_key_down(key_state, nc.keysym.A) then
		pos.x = pos.x - step
		nc.animated_sprite.set_rotation(anim_sprite_, 270)
		moved = true
	elseif nc.input.is_key_down(key_state, nc.keysym.RIGHT) or nc.input.is_key_down(key_state, nc.keysym.D) then
		pos.x = pos.x + step
		nc.animated_sprite.set_rotation(anim_sprite_, 90)
		moved = true
	end

	nc.animated_sprite.set_paused(anim_sprite_, not moved)
	if moved then
		nc.animated_sprite.set_position(anim_sprite_, pos)
	else
		nc.animated_sprite.set_frame(anim_sprite_, 0)
	end
end

function nc.on_shutdown()
	nc.animated_sprite.delete(anim_sprite_)
	nc.texture.delete(spritesheet_)
end

function nc.on_key_released(event)
	if event.sym == nc.keysym.ESCAPE then
		nc.application.quit()
	end
end

function nc.on_joymapped_axis_moved(event)
	local pos = nc.animated_sprite.get_position(anim_sprite_)
	local step = 100 * nc.application.get_frame_time()
	local moved = false

	if event.axis == nc.joy_axis.LY then
		pos.y = pos.y + step * event.value
		if event.value > 0 then
			nc.animated_sprite.set_rotation(anim_sprite_, 180)
			moved = true
		elseif event.value < 0 then
			nc.animated_sprite.set_rotation(anim_sprite_, 0)
			mnvoed = true
		end
	elseif event.axis == nc.joy_axis.LX then
		pos.x = pos.x + step * event.value
		if event.value > 0 then
			nc.animated_sprite.set_rotation(anim_sprite_, 270)
			moved = true
		elseif event.value < 0 then
			nc.animated_sprite.set_rotation(anim_sprite_, 90)
			moved = true
		end
	end

	nc.animated_sprite.set_paused(anim_sprite_, not moved)
	if moved then
		nc.animated_sprite.set_position(anim_sprite_, pos)
	else
		nc.animated_sprite.set_frame(anim_sprite_, 0)
	end
end

function nc.on_joymapped_button_released(event)
	if event.button == nc.joy_button.GUIDE then
		nc.application.quit()
	end
end
