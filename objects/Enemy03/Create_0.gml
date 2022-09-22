/// @desc
for(i=0;i<5;i++){
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
score_points = 25;
zbound = 48;
ai_decision = 0;
chase_speed = 2;
fly_speed = 16;
hp = 5;
image_xscale = 2;
image_yscale = 2;
invulnerable = false;

var sSize = 256;

for(i=0;i<5;i++){
	vertex_begin(enemyBuffer[i], Camera3D.format);
	draw_3d_wall(enemyBuffer[i], -sSize,-sSize,sSize,sSize, 0, 1,1,c_white)
	vertex_end(enemyBuffer[i]);
}