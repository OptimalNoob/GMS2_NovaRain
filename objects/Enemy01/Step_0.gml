/// @desc
depth -= fly_speed;
zmov = depth;
if(zmov < -400){
	instance_destroy();
};

xmov = x;
ymov = y;
zmov = depth;

//----------Shooting Player
if(alarm[0] == -1){
	alarm[0] = irandom_range(40,120)
	var _inst = instance_create_layer(x,y,"lyr3D",enBullet);
	_inst.zmov = zmov;
};

if(ai_decision == 1 && instance_exists(oPlayer)){
	move_towards_point(oPlayer.x, oPlayer.y, chase_speed);
};