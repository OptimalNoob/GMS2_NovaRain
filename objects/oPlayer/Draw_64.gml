/// @desc

if(LevelEnd){
	draw_sprite_ext(sFadeOut, 0, 0, 0, 1, 1, 0, c_white, fade_alph);
	fade_alph = min(1, fade_alph + 0.01);
};