/// @desc
// You can write your code in this editor
bulletBuffer = vertex_create_buffer();
bull_speed = 64;
xspawn = 0;
mask_index = sBullet;
xmov = x;
ymov = y;
zmov = 0;
bulletDamage = 1;

x1 = -4;
y1 = -4;
z1 = -32;
x2 = 4;
y2 = 4;
z2 = 32;
vertex_begin(bulletBuffer, Camera3D.format);
draw_3d_cube(bulletBuffer,x1,y1,z1,x2,y2,z2,252,123,3);

//draw_3d_floor(bulletBuffer, x1, z1, x2, z2, y1)

vertex_end(bulletBuffer);