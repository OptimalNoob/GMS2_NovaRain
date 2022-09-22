/// @description Insert description here
// You can write your code in this editor
/// @desc
for(i=0;i<6;i++){
	enemyBuffer[i] = vertex_create_buffer();
};
mask_index = sEnemy01;
matrix = 0;
xmov = 300;
ymov = scene.ground - 500;
zmov = 5000;
depth = zmov;
xmov = x;
ymov = y;
score_points = 50;
zbound = 64;
ai_decision = 0;
chase_speed = 1;
fly_speed = 4;
hp = 80;
image_xscale = 6;
image_yscale = 6;
invulnerable = false;
var sSize = 256;


for(i=0;i<6;i++){
	vertex_begin(enemyBuffer[i], Camera3D.format);
	draw_3d_wall(enemyBuffer[i], -sSize,-sSize,sSize,sSize, 0, 1,1,c_white)
	vertex_end(enemyBuffer[i]);
}