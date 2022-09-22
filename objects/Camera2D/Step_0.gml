/// @desc Camera Controls

// Lock mouse inside game window
if(done) window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()));

// Toggle Fullscreen
if(keyboard_check_pressed(vk_f11)) window_set_fullscreen(!window_get_fullscreen())

//------------------------------DEBUG
//if (keyboard_check(vk_escape)){
//    game_end();
//};

//if (keyboard_check(ord("R"))){
//    game_restart();
//};

//if(keyboard_check_pressed(ord("D"))){
//	DebugMode = !DebugMode;
//};

if(alarm[1] == -1){
	alarm[1] = 10;
	fpsOut = string(fps_real);
};

