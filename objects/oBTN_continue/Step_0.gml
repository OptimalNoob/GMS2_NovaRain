/// @desc
if(mouse_select()){
	switch(room){
		case rShop:
			PlayerMAXHP			= upg_HP[| purchaseList[| 0]];
			FireRate			= upg_Rate[| purchaseList[| 1]];
			PlayerMAXSpecial	= upg_Spec[| purchaseList[| 2]];
			IFrameDur			= upg_IFram[| purchaseList[| 3]];
			PlayerHP			= PlayerMAXHP;
			PlayerSpecial		= PlayerMAXSpecial;
			with(ShopController){
				if(alarm[0] == -1) alarm[0] = 120;
				leave = true;
			};
		break;
		case rContinue:
			room_goto(CurrentRoom);
		break;
	};
};