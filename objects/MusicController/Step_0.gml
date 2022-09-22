/// @desc
switch(room){
	case rLevel08:
	if(!audio_is_playing(sndLevelMusicFinal)){
		audio_sound_gain(sndLevelMusicFinal, 0.8,1);
		audio_play_sound(sndLevelMusicFinal, 10, 1);
	};
	break;
	default:
	if(!audio_is_playing(sndLevelMusic01)){
		audio_sound_gain(sndLevelMusic01, 0.5,1);
		audio_play_sound(sndLevelMusic01, 10, 1);
	};
	break;
};
