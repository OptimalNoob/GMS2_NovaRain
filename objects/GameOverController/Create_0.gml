/// @desc
alarm[0] = 60;

con_w = sprite_get_width(sBTN_continue) / 2;
quit_w = sprite_get_width(sBTN_quit) / 2;

instance_create_layer(room_width / 2, room_height / 2, "lyrCamera", oContinue);
instance_create_layer(room_width / 2 - con_w, room_height / 2, "lyrEntities", oBTN_continue);
instance_create_layer(room_width / 2 - quit_w, room_height / 2 + 128, "lyrEntities", oBTN_quit);