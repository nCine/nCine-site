nc = ncine

function nc.on_init()
	audio_buffer_ = nc.audio_buffer.new(nc.fs.get_data_path().."sounds/coins.ogg")
	player_ = nc.audio_buffer_player.new(audio_buffer_)
end

function nc.on_shutdown()
	nc.audio_buffer_player.delete(player_)
	nc.audio_buffer.delete(audio_buffer_)
end

function nc.on_mouse_button_released(event)
	local looping = nc.audio_buffer_player.is_looping(player_)

	if event.button == nc.mouse_button.LEFT then
		if looping == false then
			nc.audio_buffer_player.stop(player_)
			nc.audio_buffer_player.play(player_)
		else
			local playing = nc.audio_buffer_player.is_playing(player_)
			if playing then
				nc.audio_buffer_player.pause(player_)
			else
				nc.audio_buffer_player.play(player_)
			end
		end
	elseif event.button == nc.mouse_button.RIGHT then
		nc.audio_buffer_player.set_looping(player_, not looping)
	end
end
