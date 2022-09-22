/// @description Insert description here
// You can write your code in this editor
if(image_xscale<75){
image_xscale+=2
image_yscale+=2
}else{
	image_alpha -=.1	
}

if(image_alpha<0){
	instance_destroy();	
}