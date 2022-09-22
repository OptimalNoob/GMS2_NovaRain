/// @desc

row_1_y = lerp(row_1_y, row_1_end,let_speed);
row_2_y = lerp(row_2_y, row_2_end,let_speed);
row_3_y = lerp(row_3_y, row_3_end,let_speed);
let_speed += 0.0045;

if(row_1_y > row_1_end - 0.5){
	play_title = true;
};

if(play_title && !audio_is_playing(sndTitle01)){
	audio_play_sound(sndTitle01, 10, 1);
	audio_sound_gain(sndTitle01, 1, 1);
};

//if(keyboard_check_pressed(ord("R"))) game_restart();

//if(keyboard_check_pressed(vk_escape)){
//	game_end();
//}

//if(keyboard_check_pressed(vk_enter)){
//	audio_stop_all();
//	room_goto(rDebug);
//}

//if(keyboard_check_pressed(ord("S"))){
//	room_goto(rShop)	
//}

if(spawn_buttons){
	if(!instance_exists(oBTN_startgame)){
		for(i = 0;i<4;i++){
			instance_create_layer(16,but_y[i], "lyrEntities",title_but[i]);
		};
	};
	if(!instance_exists(oBTN_moregames)){
		instance_create_layer(room_width - 16, room_height - 16, "lyrEntities", oBTN_moregames);
	};
};

//if(keyboard_check_pressed(vk_numpad0)) room_goto(rLevel10);
//if(keyboard_check_pressed(vk_numpad1)) room_goto(rLevel01);
//if(keyboard_check_pressed(vk_numpad2)) room_goto(rLevel02);
//if(keyboard_check_pressed(vk_numpad3)) room_goto(rLevel03);
//if(keyboard_check_pressed(vk_numpad4)) room_goto(rLevel04);
//if(keyboard_check_pressed(vk_numpad5)) room_goto(rLevel05);
//if(keyboard_check_pressed(vk_numpad6)) room_goto(rLevel06);
//if(keyboard_check_pressed(vk_numpad7)) room_goto(rLevel07);
//if(keyboard_check_pressed(vk_numpad8)) room_goto(rLevel08);
//if(keyboard_check_pressed(vk_numpad9)) room_goto(rLevel09);
