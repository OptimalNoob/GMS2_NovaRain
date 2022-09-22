/// @description Insert description here
// You can write your code in this editor

xmov = x;
ymov = y;
zmov = depth;
depth -= fly_speed;

switch(state){
	case boss.leaving:
		fly_speed = -16;
		if(zmov >= 4400){
			fly_speed = 0;
			state = boss.wavespawn;
		};
	break;
	case boss.entering:
		fly_speed = 16;
		if(zmov <= 3000){
			wave = min(4, ++wave);
			fly_speed = 0;
			state = boss.spawning;
		};
	break;
	case boss.spawning:
		spawn_gun(wave);
		state = boss.nothing;
	break;
	case boss.wavespawn:
		boss_timeline(wave);
		waveActive = true;
		state = boss.nothing;
	break;
	case boss.vulnerable:
		isWeak = true;
		var _inst;
		_inst = instance_create_layer(x,y - 134,"lyr3D", BossWeakness)
		_inst.depth = zmov;
		state = boss.nothing;
	break;
	case boss.nothing: break;
};

if(state = boss.nothing && !instance_exists(BossGun) && !waveActive && !isWeak){
	state = boss.vulnerable;
};
show_debug_message(hp)

if(hp <= 0){
	instance_destroy(BossWeakness);
	var _death  = instance_create_layer(x,y,"lyr3D", oBossDeath);
	_death.depth = zmov;
	instance_destroy();
};
