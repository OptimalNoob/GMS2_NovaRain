/// @desc
if(mouse_select() && alarm[0] == -1){
	switch(room){
		case rTitle:
			game_end();
		break;
		case rContinue:
			audio_stop_all();
			room_goto(rTitle);
		break;
	};
};