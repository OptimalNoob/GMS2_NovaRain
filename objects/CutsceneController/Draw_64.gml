/// @desc

draw_sprite(cutscene[current], 0, 0, 0);

draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_font(fntCredits2);
draw_set_color(c_white);

if(alarm[0] == -1){
	draw_text(room_width / 2, room_height - 64, "Click to Continue");
};

if(leave){
	audio_sound_gain(sndTitle01, 0, 180);
	if(alarm[1] == -1) alarm[1] = 240;
	draw_sprite_ext(sFadeOut, 0, 0, 0, 1, 1, 0, c_white, fade_alph);
	fade_alph = min(1, fade_alph + 0.01);
};

draw_set_halign(fa_left);
draw_set_font(fntDefault);
//draw_text(16,16, current);
//draw_text(16,32, current_max);
//draw_text(16,48, alarm[0]);