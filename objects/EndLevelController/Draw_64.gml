/// @desc
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_font(fntEndLevel);

if(anim_header) draw_text(header_x, header_y, "LEVEL\nCOMPLETED");



if(!anim_header){
	draw_set_font(fntEndLevel3);
	draw_set_halign(fa_center);
	draw_text(room_width / 2, 64, string(CurrentLevel));
	draw_set_font(fntEndLevel2);
	draw_set_halign(fa_right);
	draw_sprite(sSeparator, 0, room_width / 2, 496);
	
	if(!del_1){
		draw_text(630,288, "score:");
		draw_text(630,356, "kills:");
		draw_text(630,424, "health:");
		draw_text(630,512, "reward:");
		
		draw_text(882,290, "0");
		draw_text(882,358, "0");
		draw_text(882,426, "0 %");
		draw_text(882,514, "0");
	} else {
		draw_text(630,288, "score:");
		draw_text(630,356, "kills:");
		draw_text(630,424, "health:");
		draw_text(630,512, "reward:");
		
		draw_text(882,290, string(score_out));
		draw_text(882,358, string(kills_out));
		draw_text(882,426, string(hperc_out) + " %");
		draw_text(882,514, string(money_out));
	};
};

if(draw_cont){
	draw_set_color(c_white);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_font(fntCredits);
	draw_text(room_width / 2, room_height - 64, "Click to Continue");
};

draw_set_font(fntDefault);