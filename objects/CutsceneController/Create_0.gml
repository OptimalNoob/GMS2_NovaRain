/// @desc
alarm[0] = 240;
alarm[1] = -1;
audio_play_sound(sndCutscene, 10, true);

fade_alph = 0;
leave = false;

cutscene[0] = sCS_1;
cutscene[1] = sCS_2;
cutscene[2] = sCS_3;
cutscene[3] = sCS_4;
cutscene[4] = sCS_5;
cutscene[5] = sCS_6;
switch(room){
	case rCutscene01:
		current = 0;
		current_max = 2;
		next_room = rLevel01;
	break;
	case rCutscene02:
		current = 3;
		current_max = 5;
		next_room = rTitle;
	break;
	default: break;
};