nc = ncine

function nc.on_pre_init(cfg)
	cfg.resolution = {x = 1280, y = 720}
	cfg.window_title = "nCine example"
	cfg.console_log_level = nc.log_level.INFO
	return cfg
end

function nc.on_init()
	local rootnode = nc.application.get_rootnode()

	font_ = nc.font.new(nc.fs.get_data_path().."fonts/DroidSans32_256.fnt",
	                    nc.fs.get_data_path().."fonts/DroidSans32_256.png")

	textnode_ = nc.textnode.new(rootnode, font_, 256)
	nc.textnode.set_color(textnode_, 1, 1, 0, 1)
	nc.textnode.set_alignment(textnode_, nc.text_alignment.LEFT)
end

function nc.on_frame_start()
	local str = string.format("FPS: %.2f\nFrame time: %.2f ms", 1.0 / nc.application.get_frame_time(), 1000 * nc.application.get_frame_time())
	nc.textnode.set_string(textnode_, str)

	nc.textnode.set_position(textnode_, nc.textnode.get_width(textnode_) * 0.5,
	                                    nc.application.get_height() - nc.textnode.get_height(textnode_) * 0.5)
end

function nc.on_shutdown()
	nc.textnode.delete(textnode_)
	nc.font.delete(font_)
end
