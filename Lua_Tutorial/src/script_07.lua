nc = ncine

function nc.on_init()
	texture_ = nc.texture.new(nc.fs.get_data_path().."textures/texture2.png")

	local resolution = nc.application.get_resolution()
	mesh_sprite_ = nc.mesh_sprite.new(nc.application.get_rootnode(), texture_, resolution.x * 0.5, resolution.y * 0.5)

	vertices_ = {
		 0.0, 0.0, 0.5, 0.5,
		-0.5, -0.5, 0.0, 1.0,
		 0.5, -0.5, 1.0, 1.0,
		 0.5, -0.5, 1.0, 1.0,

		 0.0,  0.0, 0.5, 0.5,
		 0.5, -0.5, 1.0, 1.0,
		 0.5,  0.5, 1.0, 0.0,
		 0.5,  0.5, 1.0, 0.0,

		 0.0, 0.0, 0.5, 0.5,
		 0.5, 0.5, 1.0, 0.0,
		-0.5, 0.5, 0.0, 0.0,
		-0.5, 0.5, 0.0, 0.0,

		 0.0,  0.0, 0.5, 0.5,
		-0.5,  0.5, 0.0, 0.0,
		-0.5, -0.5, 0.0, 1.0,
		-0.5, -0.5, 0.0, 1.0,
	}

	nc.mesh_sprite.emplace_vertices(mesh_sprite_, vertices_)

	sprite_vertices_ = nc.mesh_sprite.get_vertices(mesh_sprite_)

	angle_ = 0
end

function nc.on_frame_start()
	angle_ = angle_ + nc.application.get_interval()

	for i = 5, #sprite_vertices_ do
		local mod = (i - 1) % 4
		if mod == 0 then
			sprite_vertices_[i] = vertices_[i] * (0.25 + math.sin(angle_) * math.sin(angle_) * 0.75)
		elseif mod == 1 then
			sprite_vertices_[i] = vertices_[i] * (0.25 + math.cos(angle_) * math.cos(angle_) * 0.75)
		end
	end

	nc.mesh_sprite.emplace_vertices(mesh_sprite_, sprite_vertices_)
end

function nc.on_shutdown()
	nc.mesh_sprite.delete(mesh_sprite_)
	nc.texture.delete(texture_)
end
