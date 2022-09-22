/// @description Insert description here
// You can write your code in this editor
zmov+=bull_speed;
yspeed += grav;
ymov+=yspeed;
y=ymov

if(y>800){
	//do the thing	
	var enemyCount = instance_number(EnemyParent);
	for(i=0;i<enemyCount;i++){
		var _inst = instance_find(EnemyParent, i);
		_inst.hp-= 20;
	}
	enemyCount = instance_number(BossParent);
	for(i=0;i<enemyCount;i++){
		var _inst = instance_find(BossParent, i);
		_inst.hp-= 100;
	}
	
	
	instance_destroy();
}