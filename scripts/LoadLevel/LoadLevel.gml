function load_level(){
	instance_create_layer(0,0,"lyrCamera",Camera3D);
	instance_create_layer(room_width / 2,room_height / 2,"lyr3D",Floor);
	instance_create_layer(room_width / 2,room_height / 2,"lyr3D",Floor2);
	instance_create_layer(0,0,"lyr3D",Sky);
	instance_create_layer(room_width / 2,room_height / 2,"lyr3D",oPlayer);
};

function load_level_final(){
	instance_create_layer(0,0,"lyrCamera",Camera3D);
	instance_create_layer(room_width / 2,room_height / 2,"lyr3D",Floor);
	instance_create_layer(room_width / 2,room_height / 2,"lyr3D",Floor2);
	instance_create_layer(room_width / 2,room_height / 2,"lyr3D",Floor_final1);
	instance_create_layer(room_width / 2,room_height / 2,"lyr3D",Floor_final2);
	instance_create_layer(0,0,"lyr3D",Sky);
	instance_create_layer(room_width / 2,room_height / 2,"lyr3D",oPlayer);
};