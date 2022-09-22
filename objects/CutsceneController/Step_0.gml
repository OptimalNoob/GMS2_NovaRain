
if(mouse_check_button_pressed(mb_left) && alarm[0] == -1 && !leave){
	if(current != current_max){
		alarm[0] = 240;
		current = min(current_max, current + 1);
	};
};

if(mouse_check_button_pressed(mb_left) && current == current_max && alarm[0] == -1){
	leave = true;
};