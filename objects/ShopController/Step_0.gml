/// @desc

var btnx_pad = 120;
var btny_pad = 140;

if(button_count < 20){
	for(i = 0; i < 5; i++){
		for(j = 0; j < 4; j++){
			_inst = instance_create_layer(24 + (i * btnx_pad),
			180 + (j * btny_pad), "lyrEntities", oUPG_debug);
			button_count++;
			_inst.upgrade = j;
			_inst.index = i;
			_inst.sprite_index = btn_spr[j,i];
			_inst.price = upg_price[j, i];
		};
	};
};

//if(keyboard_check_pressed(ord("M"))){
//	PlayerMoney = min(99999, PlayerMoney + 12500);	
//};

//if(keyboard_check_pressed(vk_space)){
//	PlayerMAXHP			= upg_HP[| purchaseList[| 0]];
//	FireRate			= upg_Rate[| purchaseList[| 1]];
//	PlayerMAXSpecial	= upg_Spec[| purchaseList[| 2]];
//	IFrameDur			= upg_IFram[| purchaseList[| 3]];
//	PlayerHP			= PlayerMAXHP;
//	PlayerSpecial		= PlayerMAXSpecial;
//	if(alarm[0] == -1) alarm[0] = 120;
//	leave = true;
//};

