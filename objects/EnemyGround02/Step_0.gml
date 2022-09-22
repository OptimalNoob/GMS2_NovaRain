/// @desc
depth -= fly_speed;
zmov = depth;
if(zmov < -400){
	instance_destroy();
};

if(alarm[0] == -1){
	alarm[0] = irandom_range(5, 15)
	var _inst = instance_create_layer(x,y-20,"lyr3D",enBulletGround);
	_inst.zmov = zmov;
	_inst.xspeed = irandom_range(-8,8);
	_inst = instance_create_layer(x,y-20,"lyr3D",enBulletGround);
	_inst.zmov = zmov;
	_inst.xspeed = irandom_range(-5,5);
	_inst = instance_create_layer(x,y-20,"lyr3D",enBulletGround);
	_inst.zmov = zmov;
	_inst.xspeed = irandom_range(-2,2);
};

if(ai_decision == 1 && instance_exists(oPlayer)){
	move_towards_point(oPlayer.x, y, chase_speed);
};

xmov = x;
ymov = y;
zmov = depth;
