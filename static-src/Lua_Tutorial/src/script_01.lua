nc = ncine

function nc.on_pre_init(cfg)
	cfg.resolution = {x = 1280, y = 720}
	cfg.window_title = "nCine example"
	return cfg
end

function nc.on_init()
	texture_ = nc.texture.new(nc.fs.get_data_path().."textures/texture2.png")

	local resolution = nc.application.get_resolution()
	pos_ = {x = resolution.x * 0.5, y = resolution.y * 0.5}
	sprite_ = nc.sprite.new(nc.application.get_rootnode(), texture_, pos_.x, pos_.y)

	angle_ = 0
end

function nc.on_frame_start()
	angle_ = angle_ + 2 * nc.application.get_frame_time()

	local radius = nc.application.get_width() * 0.2
	local newpos = {x = pos_.x + radius * math.sin(angle_), y = pos_.y + radius * math.cos(angle_)}
	nc.sprite.set_position(sprite_, newpos)
end

function nc.on_shutdown()
	nc.sprite.delete(sprite_)
	nc.texture.delete(texture_)
end

function nc.on_mouse_button_released(event)
	if event.button == nc.mouse_button.LEFT then
		pos_ = {x = event.x, y = event.y}
	end
end

function nc.on_mouse_moved(state)
	if state.is_left_down then
		pos_ = {x = state.x, y = state.y}
	end
end
