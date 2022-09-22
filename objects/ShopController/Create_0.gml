/// @desc
con_w = sprite_get_width(sBTN_continue);
con_h = sprite_get_height(sBTN_continue);

button_count = 0;
instance_create_layer(692, 110, "lyrEntities", oShipSide);
audio_play_sound(sndShop, 10, true);
instance_create_layer(room_width - 116 - con_w, room_height - con_h - 156,
"lyrEntities", oBTN_continue);

//Setup Transition
fade_alph = 0;
leave = false;
alarm[0] = -1;

//Upgrade Sprites - Hull
btn_spr[0,0] = sUPG_hull01;
btn_spr[0,1] = sUPG_hull02;
btn_spr[0,2] = sUPG_hull03;
btn_spr[0,3] = sUPG_hull04;
btn_spr[0,4] = sUPG_hull05;
//Upgrade Sprites - Gun
btn_spr[1,0] = sUPG_gun01;
btn_spr[1,1] = sUPG_gun02;
btn_spr[1,2] = sUPG_gun03;
btn_spr[1,3] = sUPG_gun04;
btn_spr[1,4] = sUPG_gun05;
//Upgrade Sprites - Special
btn_spr[2,0] = sUPG_special01;
btn_spr[2,1] = sUPG_special02;
btn_spr[2,2] = sUPG_special03;
btn_spr[2,3] = sUPG_special04;
btn_spr[2,4] = sUPG_special05;
//Upgrade Sprites - Shield
btn_spr[3,0] = sUPG_shield01;
btn_spr[3,1] = sUPG_shield02;
btn_spr[3,2] = sUPG_shield03;
btn_spr[3,3] = sUPG_shield04;
btn_spr[3,4] = sUPG_shield05;

//Upgrade Price - Hull
upg_price[0,0] = 0;
upg_price[0,1] = 2500;
upg_price[0,2] = 10000;
upg_price[0,3] = 15000;
upg_price[0,4] = 50000;
//Upgrade Price - Gun
upg_price[1,0] = 0;
upg_price[1,1] = 2500;
upg_price[1,2] = 10000;
upg_price[1,3] = 25000;
upg_price[1,4] = 50000;
//Upgrade Price - Special
upg_price[2,0] = 0;
upg_price[2,1] = 10000;
upg_price[2,2] = 25000;
upg_price[2,3] = 32000;
upg_price[2,4] = 50000;
//Upgrade Price - Shield
upg_price[3,0] = 0;
upg_price[3,1] = 2500;
upg_price[3,2] = 5000;
upg_price[3,3] = 10000;
upg_price[3,4] = 18000;