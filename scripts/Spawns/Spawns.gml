function spawn_random_enemy(_count){
	var xx = 0; repeat(_count){
		var _x = irandom_range(16, room_width - 16);
		var _y = irandom_range(10, scene.ground - 16);
		var _sel = irandom(ds_list_size(EnList) - 1);
		var _inst = instance_create_layer(_x,_y,"lyr3D",EnList[| _sel]);
	};
};

function spawn_enemy(_id, _x, _y, _z, _ai){
	_inst = instance_create_layer(_x,_y,"lyr3D",_id);
	_inst.xmov = _x
	_inst.ymov = _y
	_inst.zmov = _z
	_inst.depth = _z
	_inst.ai_decision = _ai
}

function spawn_building(_width, _height, _depth, _id, _x, _y, _z, _tex){
	_inst = instance_create_layer(0,0,"lyr3D",_id);
	_inst.cube_width = BLOCK_SIZE * _width;
	_inst.cube_height = BLOCK_SIZE * _height;
	_inst.cube_depth = BLOCK_SIZE * _depth;
	_inst.xmov = _x;
	_inst.ymov = _y == -1 ? scene.ground - _inst.cube_height : _y;
	_inst.zmov = _z;
	_inst.tex = _tex;
};


function spawn_formation(_id, _x, _y, _z, _shape){
		switch(_shape){
			case formation.v:
				spawn_enemy(_id, _x, _y, _z - 0, 0)
				spawn_enemy(_id, _x + 200, _y, _z - 200, 0)
				spawn_enemy(_id, _x + 400, _y, _z - 500, 0)
				spawn_enemy(_id, _x + 600, _y, _z - 200, 0)
				spawn_enemy(_id, _x + 800, _y, _z - 0, 0)
			break;
			case formation.s:
				spawn_enemy(_id, _x, _y, _z, 0)
				spawn_enemy(_id, _x - 200, _y, _z + 200, 0)
				spawn_enemy(_id, _x, _y, _z + 400, 0)
				spawn_enemy(_id, _x + 200, _y, _z + 200, 0)
				spawn_enemy(_id, _x + 200, _y, _z - 200, 0)
				spawn_enemy(_id, _x, _y, _z - 400, 0)
				spawn_enemy(_id, _x - 200, _y, _z - 400, 0)
			break;
			case formation.f8:
				spawn_enemy(_id, _x - 100, _y, _z - 100, 0)
				spawn_enemy(_id, _x - 200, _y, _z - 200, 0)
				spawn_enemy(_id, _x, _y, _z - 300, 0)
				spawn_enemy(_id, _x + 200, _y, _z - 200, 0)
				spawn_enemy(_id, _x + 100, _y, _z - 100, 0)
				
				spawn_enemy(_id, _x - 100, _y, _z + 100, 0)
				spawn_enemy(_id, _x - 200, _y, _z + 200, 0)
				spawn_enemy(_id, _x, _y, _z + 300, 0)
				spawn_enemy(_id, _x + 200, _y, _z + 200, 0)
				spawn_enemy(_id, _x + 100, _y, _z + 100, 0)
				
			break;
		}
}

function spawn_cluster_1(){
	spawn_building(4, 8, 4, Cube01, -1000, -1, 5200, sBuilding01);
	spawn_building(4, 6, 4, Cube01, -1000, -1, 5600, sBuilding02);
	spawn_building(4, 10, 4, Cube01, -1000, -1, 6000, sBuilding03);
	spawn_building(4, 8, 4, Cube01, -1000, -1, 6400, sBuilding04);
	spawn_building(4, 4, 4, Cube01, -1000, -1, 6800, sBuilding05);
	spawn_building(4, 18, 4, Cube01, -1000, -1, 7200, sBuilding06);
	spawn_building(4, 2, 4, Cube01, -1000, -1, 7600, sBuilding07);

	spawn_building(4, 8, 4, Cube01, 2000, -1, 5200, sBuilding01);
	spawn_building(4, 6, 4, Cube01, 2000, -1, 5600, sBuilding02);
	spawn_building(4, 10, 4, Cube01, 2000, -1, 6000, sBuilding03);
	spawn_building(4, 8, 4, Cube01, 2000, -1, 6400, sBuilding04);
	spawn_building(4, 4, 4, Cube01, 2000, -1, 6800, sBuilding05);
	spawn_building(4, 18, 4, Cube01, 2000, -1, 7200, sBuilding06);
	spawn_building(4, 2, 4, Cube01, 2000, -1, 7600, sBuilding07);

	spawn_building(4, 2, 4, Cube01, -1600, -1, 5200, sBuilding02);
	spawn_building(4, 6, 4, Cube01, -1600, -1, 5600, sBuilding01);
	spawn_building(4, 8, 4, Cube01,-1600, -1, 6000, sBuilding05);
	spawn_building(4, 4, 4, Cube01, -1600, -1, 6400, sBuilding03);
	spawn_building(4, 10, 4, Cube01, -1600, -1, 6800, sBuilding07);
	spawn_building(4, 15, 4, Cube01,-1600, -1, 7200, sBuilding06);
	spawn_building(4, 4, 4, Cube01, -1600, -1, 7600, sBuilding03);

	spawn_building(4, 8, 4, Cube01,  2600, -1, 5200, sBuilding04);
	spawn_building(4, 5, 4, Cube01,  2600, -1, 5600, sBuilding01);
	spawn_building(4, 4, 4, Cube01, 2600, -1, 6000, sBuilding02);
	spawn_building(4, 5, 4, Cube01,  2600, -1, 6400, sBuilding05);
	spawn_building(4, 18, 4, Cube01,  2600, -1, 6800, sBuilding02);
	spawn_building(4, 6, 4, Cube01, 2600, -1, 7200, sBuilding07);
	spawn_building(4, 4, 4, Cube01,  2600, -1, 7600, sBuilding06);
};

function spawn_cluster_2(){
	spawn_building(4, 8, 4, Cube02, -1000, -1, 5200, sBuilding01b);
	spawn_building(4, 6, 4, Cube02, -1000, -1, 5600, sBuilding02b);
	spawn_building(4, 10, 4, Cube02, -1000, -1, 6000, sBuilding03b);
	spawn_building(4, 8, 4, Cube02, -1000, -1, 6400, sBuilding04b);
	spawn_building(4, 4, 4, Cube02, -1000, -1, 6800, sBuilding05b);
	spawn_building(4, 18, 4, Cube02, -1000, -1, 7200, sBuilding06b);
	spawn_building(4, 2, 4, Cube02, -1000, -1, 7600, sBuilding07b);

	spawn_building(4, 8, 4, Cube02, 2000, -1, 5200, sBuilding01b);
	spawn_building(4, 6, 4, Cube02, 2000, -1, 5600, sBuilding02b);
	spawn_building(4, 10, 4, Cube02, 2000, -1, 6000, sBuilding03b);
	spawn_building(4, 8, 4, Cube02, 2000, -1, 6400, sBuilding04b);
	spawn_building(4, 4, 4, Cube02, 2000, -1, 6800, sBuilding05b);
	spawn_building(4, 18, 4, Cube02, 2000, -1, 7200, sBuilding06b);
	spawn_building(4, 2, 4, Cube02, 2000, -1, 7600, sBuilding07b);

	spawn_building(4, 2, 4, Cube02, -1600, -1, 5200, sBuilding02b);
	spawn_building(4, 6, 4, Cube02, -1600, -1, 5600, sBuilding01b);
	spawn_building(4, 8, 4, Cube02,-1600, -1, 6000, sBuilding05b);
	spawn_building(4, 4, 4, Cube02, -1600, -1, 6400, sBuilding03b);
	spawn_building(4, 10, 4, Cube02, -1600, -1, 6800, sBuilding07b);
	spawn_building(4, 15, 4, Cube02,-1600, -1, 7200, sBuilding06b);
	spawn_building(4, 4, 4, Cube02, -1600, -1, 7600, sBuilding03b);

	spawn_building(4, 8, 4, Cube02,  2600, -1, 5200, sBuilding04b);
	spawn_building(4, 5, 4, Cube02,  2600, -1, 5600, sBuilding01b);
	spawn_building(4, 4, 4, Cube02, 2600, -1, 6000, sBuilding02b);
	spawn_building(4, 5, 4, Cube02,  2600, -1, 6400, sBuilding05b);
	spawn_building(4, 18, 4, Cube02,  2600, -1, 6800, sBuilding02b);
	spawn_building(4, 6, 4, Cube02, 2600, -1, 7200, sBuilding07b);
	spawn_building(4, 4, 4, Cube02,  2600, -1, 7600, sBuilding06b);
};

function spawn_cluster_3(){
	spawn_building(4, 8, 4, Cube01, -1000, -1, 5200, sBuilding01c);
	spawn_building(4, 6, 4, Cube01, -1000, -1, 5600, sBuilding02c);
	spawn_building(4, 10, 4, Cube01, -1000, -1, 6000, sBuilding03c);
	spawn_building(4, 8, 4, Cube01, -1000, -1, 6400, sBuilding04c);
	spawn_building(4, 4, 4, Cube01, -1000, -1, 6800, sBuilding05c);
	spawn_building(4, 18, 4, Cube01, -1000, -1, 7200, sBuilding06c);
	spawn_building(4, 2, 4, Cube01, -1000, -1, 7600, sBuilding07c);

	spawn_building(4, 8, 4, Cube01, 2000, -1, 5200, sBuilding01c);
	spawn_building(4, 6, 4, Cube01, 2000, -1, 5600, sBuilding02c);
	spawn_building(4, 10, 4, Cube01, 2000, -1, 6000, sBuilding03c);
	spawn_building(4, 8, 4, Cube01, 2000, -1, 6400, sBuilding04c);
	spawn_building(4, 4, 4, Cube01, 2000, -1, 6800, sBuilding05c);
	spawn_building(4, 18, 4, Cube01, 2000, -1, 7200, sBuilding06c);
	spawn_building(4, 2, 4, Cube01, 2000, -1, 7600, sBuilding07c);

	spawn_building(4, 2, 4, Cube01, -1600, -1, 5200, sBuilding02c);
	spawn_building(4, 6, 4, Cube01, -1600, -1, 5600, sBuilding01c);
	spawn_building(4, 8, 4, Cube01,-1600, -1, 6000, sBuilding05c);
	spawn_building(4, 4, 4, Cube01, -1600, -1, 6400, sBuilding03c);
	spawn_building(4, 10, 4, Cube01, -1600, -1, 6800, sBuilding07c);
	spawn_building(4, 15, 4, Cube01,-1600, -1, 7200, sBuilding06c);
	spawn_building(4, 4, 4, Cube01, -1600, -1, 7600, sBuilding03c);

	spawn_building(4, 8, 4, Cube01,  2600, -1, 5200, sBuilding04c);
	spawn_building(4, 5, 4, Cube01,  2600, -1, 5600, sBuilding01c);
	spawn_building(4, 4, 4, Cube01, 2600, -1, 6000, sBuilding02c);
	spawn_building(4, 5, 4, Cube01,  2600, -1, 6400, sBuilding05c);
	spawn_building(4, 18, 4, Cube01,  2600, -1, 6800, sBuilding02c);
	spawn_building(4, 6, 4, Cube01, 2600, -1, 7200, sBuilding07c);
	spawn_building(4, 4, 4, Cube01,  2600, -1, 7600, sBuilding06c);
};

function spawn_gun(_wave){
	var _inst;
	/*switch(_wave){
		case 0:
			_inst = instance_create_layer(x-578,y+8,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst.zmov = zmov;
			_inst = instance_create_layer(x+578,y+8,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst.zmov = zmov;
		break;
		case 1:
			_inst = instance_create_layer(x-578,y+8,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst.zmov = zmov;
			_inst = instance_create_layer(x+578,y+8,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst.zmov = zmov;
		break;
	};*/
	
	if(_wave>=0){
			_inst = instance_create_layer(x-578,y+8,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst.zmov = zmov;
			_inst = instance_create_layer(x+578,y+8,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst.zmov = zmov;
	}
	if(_wave>=1){
			_inst = instance_create_layer(x-578 + 100,y+8,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst.zmov = zmov;
			_inst = instance_create_layer(x+578 - 100,y+8,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst.zmov = zmov;
	}
	if(_wave>=2){
			_inst = instance_create_layer(x-578 + 100 * 2,y+8,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst.zmov = zmov;
			_inst = instance_create_layer(x+578 - 100 * 2,y+8,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst.zmov = zmov;
	}
	if(_wave>=3){
			_inst = instance_create_layer(x-578 + 80 * 4 + 96,y+8,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst.zmov = zmov;
			_inst = instance_create_layer(x+578 - 80 * 4 - 96,y+8,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst.zmov = zmov;
	}
	if(_wave>=4){
			_inst = instance_create_layer(x,y+8,"lyr3D", BossGun);
			_inst.depth = zmov - 33;
			_inst.zmov = zmov - 33;	
};
}