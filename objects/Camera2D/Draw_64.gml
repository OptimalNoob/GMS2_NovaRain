///@desc

if(room != rTitle && room != rEndLevel){
	if(slide_tran){
		if(alarm[2] == -1) alarm[2] = 160;
		draw_sprite(sSlidTran, 0, 0, 0 + slide_1);
		draw_sprite(sSlidTran, 0, 0, display_get_gui_height() / 2 + slide_2);
	
		slide_1 = lerp(slide_1, -1000, slide_speed);
		slide_2 = lerp(slide_2, 1000, slide_speed);
		slide_speed += 0.001;
	};
};

