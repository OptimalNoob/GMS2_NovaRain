/// @desc

if(position_meeting(mouse_x,mouse_y,id)){
	image_index = 2;
	if(mouse_check_button_pressed(mb_left)){
		if(purchaseList[|upgrade] == index - 1){
			//This is where we check to see if you have enough money for upgrade
			if(price <= PlayerMoney){
				audio_play_sound(sndPurchase, 10, false);
				purchaseList[|upgrade]++;
				PlayerMoney -= price;
			}
		}
	};
} else {
	image_index = 0;
};

if(purchaseList[|upgrade] >= index){
	image_index = 1;	
};