/// @desc

bulletBuffer = vertex_create_buffer();
xspawn = 0;
mask_index = sBullet;
image_xscale = 2;
image_yscale = 2;
xmov = x;
ymov = y;
zmov = 0;
bull_speed = 32 + irandom_range(-4,4);

x1 = -4;
y1 = -4;
z1 = 8;
x2 = 4;
y2 = 4;
z2 = -8;
shotX = room_width/2;
shotY = room_height/2;


if(instance_exists(oPlayer)){
		shotX = oPlayer.x
		shotY = oPlayer.y
}

vertex_begin(bulletBuffer, Camera3D.format);
draw_3d_cube(bulletBuffer,
			x1,
			y1,
			z1,
			x2,
			y2,
			z2);

vertex_end(bulletBuffer);