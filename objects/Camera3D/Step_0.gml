/// @desc Camera Controls

// Lock mouse inside game window
if(done) window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()));

if(InLevel){
	// Follow Player
	if(follow != noone){
		camx = clamp(lerp(camx,follow.x,0.15), 0 + cam_w / 2, room_width - cam_w / 2);
		camy = lerp(camy,follow.y - 80,0.15);
	};

	// Control Zoom
	if(mouse_wheel_up())	zoom = min(-200, zoom + 10);
	if(mouse_wheel_down())	zoom -= 10;

	// Submit Movement
	lookx = camx;
	looky = camy;
	camz = lerp(camz, zoom, 0.06);
};

// Toggle Fullscreen
if(keyboard_check_pressed(vk_f11)) window_set_fullscreen(!window_get_fullscreen())

//------------------------------DEBUG
//if (keyboard_check(vk_escape)){
//    game_end();
//};


//if (keyboard_check(ord("R"))){
//    game_restart();
//};

//if (keyboard_check(ord("T"))){
//	audio_stop_all();
//	room_goto(rTitle);
//};

//if(keyboard_check_pressed(ord("L"))){
//	PlayerHP--;
//};

//if(keyboard_check_pressed(ord("D"))){
//	DebugMode = !DebugMode;
//};

if(alarm[1] == -1){
	alarm[1] = 10;
	fpsOut = string(fps_real);
};

