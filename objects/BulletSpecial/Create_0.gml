/// @description Insert description here
// You can write your code in this editor
bulletBuffer = vertex_create_buffer();
bull_speed = 32;
xspawn = 0;
mask_index = sBullet;
xmov = x;
ymov = y;
zmov = 0;
bulletDamage = 1;
yspeed = 0
grav = .3

sSize = 32;

vertex_begin(bulletBuffer, Camera3D.format);

draw_3d_wall(bulletBuffer, -sSize,-sSize,sSize,sSize, 0, 1,1,c_white);

vertex_end(bulletBuffer);