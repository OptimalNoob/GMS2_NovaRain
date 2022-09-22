/// @description Insert description here
// You can write your code in this editor
if(image_xscale < 100){
image_xscale += 1;
image_yscale += 1;
}else{
	image_alpha -=.1	
}

if(image_alpha < 0){
	if(alarm[0] == -1) alarm[0] = 10;
}

depth -= 24;