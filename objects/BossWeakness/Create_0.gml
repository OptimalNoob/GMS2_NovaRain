/// @description Insert description here
// You can write your code in this editor
image_xscale = 12
image_yscale = 12
//I'm fully aware that the final boss should exist at this point, but never a bad idea
//to be safe
if(instance_exists(FinalBoss)){
	hp = FinalBoss.hp;
}
zbound = 32;
xmov = x;
ymov = y;
zmov = depth;
alarm[0] = 360;