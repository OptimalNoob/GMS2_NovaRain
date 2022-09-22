/// @desc
for(i = 0;i < array_length(playerBuffer);i++){
	vertex_delete_buffer(playerBuffer[i]);
}

audio_stop_sound(sndEngine01);