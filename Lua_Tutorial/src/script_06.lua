nc = ncine

function nc.on_init()
	texture_ = nc.texture.new(nc.fs.get_data_path().."textures/texture4.png")

	local resolution = nc.application.get_resolution()
	local pos = { x = resolution.x * 0.5, y = resolution.y * 0.5 }
	sun_sprite_ = nc.sprite.new(nc.application.get_rootnode(), texture_, pos)

	earth_sprite_ = nc.sprite.new(sun_sprite_, texture_, resolution.x * 0.25, 0)
	nc.sprite.set_scale(earth_sprite_, 0.5)

	moon_sprite_ = nc.sprite.new(earth_sprite_, texture_, resolution.x * 0.1, 0)
	nc.sprite.set_scale(moon_sprite_, 0.5)

	angle_ = 0.0
end

function nc.on_frame_start()
	angle_ = angle_ + 50 * nc.application.get_interval()

	nc.sprite.set_rotation(sun_sprite_, angle_ * 0.5)
	nc.sprite.set_rotation(earth_sprite_, angle_)
	nc.sprite.set_rotation(moon_sprite_, angle_)
end

function nc.on_shutdown()
	nc.sprite.delete(moon_sprite_)
	nc.sprite.delete(earth_sprite_)
	nc.sprite.delete(sun_sprite_)
	nc.texture.delete(texture_)
end

function nc.on_mouse_button_released(event)
	if event.button == nc.mouse_button.LEFT then
		if nc.sprite.get_parent(moon_sprite_) == earth_sprite_ then
			nc.sprite.set_parent(moon_sprite_, sun_sprite_)
		elseif nc.sprite.get_parent(moon_sprite_) == sun_sprite_ then
			nc.sprite.set_parent(moon_sprite_, nc.application.get_rootnode())
		elseif nc.sprite.get_parent(moon_sprite_) == nc.application.get_rootnode() then
			nc.sprite.set_parent(moon_sprite_, earth_sprite_)
		end
	elseif event.button == nc.mouse_button.RIGHT then
		local sun_children = nc.sprite.get_children(sun_sprite_)
		if #sun_children > 1 or nc.sprite.num_children(earth_sprite_) == 0 then
			nc.sprite.add_child(earth_sprite_, moon_sprite_)
		end
	end
end
