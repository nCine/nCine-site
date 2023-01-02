nc = ncine

function nc.on_init()
	audiobuffer_ = nc.audiobuffer.new(nc.fs.get_data_path().."sounds/coins.ogg")
	player_ = nc.audiobuffer_player.new(audiobuffer_)
end

function nc.on_shutdown()
	nc.audiobuffer_player.delete(player_)
	nc.audiobuffer.delete(audiobuffer_)
end

function nc.on_mouse_button_released(event)
	local looping = nc.audiobuffer_player.is_looping(player_)

	if event.button == nc.mouse_button.LEFT then
		if looping == false then
			nc.audiobuffer_player.stop(player_)
			nc.audiobuffer_player.play(player_)
		else
			local playing = nc.audiobuffer_player.is_playing(player_)
			if playing then
				nc.audiobuffer_player.pause(player_)
			else
				nc.audiobuffer_player.play(player_)
			end
		end
	elseif event.button == nc.mouse_button.RIGHT then
		nc.audiobuffer_player.set_looping(player_, not looping)
	end
end
