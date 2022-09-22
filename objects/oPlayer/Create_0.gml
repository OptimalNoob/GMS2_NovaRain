/// @desc

for(i=0;i<5;i++){
	playerBuffer[i] = vertex_create_buffer();
}
pLerp[0] = 0.02;
pLerp[1] = 0.015;
pLerp[2] = 0.01;
pLerp[3] = 0.005;
pLerp[4] = 0.001;
mask_index = sBullet;
matrix = 0;
xmov = x;
ymov = y;
zmov = 0;
depth = 0;
offset = 1.2;
vert_off = 16;
fade_alph = 0;
image_xscale = 8;
image_yscale = 2;

PlayerHP = PlayerMAXHP;
PlayerSpecial = PlayerMAXSpecial;
PlayerKills = 0;
PlayerPoints = 0;

iframes = false;

zbound = 16;
var sSize = 196;

for(i=0;i<5;i++){
	vertex_begin(playerBuffer[i], Camera3D.format);
	draw_3d_wall(playerBuffer[i], -sSize,-sSize,sSize,sSize, 0, 1,1,c_white)
	vertex_end(playerBuffer[i]);
}


audio_play_sound(sndEngine01, 10, true);
