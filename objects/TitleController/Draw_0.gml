/// @desc
if(play_title){
	if(!spawn_delay){
		alarm[0] = 120;
		spawn_delay = true;
	};
	draw_sprite_ext(sTitle_flash,0,0,0,1,1,0,c_white,flash_alph);
	flash_alph = max(0,flash_alph - 0.01);
	layer_set_visible("lyrBG",true);
};

#region DRAW TITLE
draw_sprite(let_n[0], 0, col_1_x, row_1_y);
draw_sprite(let_n[1], 0, col_1_x, row_2_y);

draw_sprite(let_o[0], 0, col_2_x, row_1_y);
draw_sprite(let_o[1], 0, col_2_x, row_2_y);
draw_sprite(let_o[2], 0, col_2_x, row_3_y);

draw_sprite(let_v[0], 0, col_3_x, row_1_y);
draw_sprite(let_v[1], 0, col_3_x, row_2_y);
draw_sprite(let_v[2], 0, col_3_x, row_3_y);

draw_sprite(let_a[0], 0, col_4_x, row_1_y);
draw_sprite(let_a[1], 0, col_4_x, row_2_y);
draw_sprite(let_a[2], 0, col_4_x, row_3_y);

draw_sprite(let_r[0], 0, col_5_x, row_1_y);
draw_sprite(let_r[1], 0, col_5_x, row_2_y);
draw_sprite(let_r[2], 0, col_5_x, row_3_y);

draw_sprite(let_a[0], 0, col_6_x, row_1_y);
draw_sprite(let_a[1], 0, col_6_x, row_2_y);
draw_sprite(let_a[2], 0, col_6_x, row_3_y);

draw_sprite(let_i[0], 0, col_7_x, row_1_y);
draw_sprite(let_i[1], 0, col_7_x, row_2_y);
draw_sprite(let_i[2], 0, col_7_x, row_3_y);

draw_sprite(let_n[0], 0, col_8_x, row_1_y);
draw_sprite(let_n[1], 0, col_8_x, row_2_y);
#endregion