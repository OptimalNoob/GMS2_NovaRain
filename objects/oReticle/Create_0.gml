/// @desc
// You can write your code in this editor
reticleBuffer = vertex_create_buffer();

xmov = x;
ymov = y;
zmov = 1000;

var sSize = 32;

vertex_begin(reticleBuffer, Camera3D.format);
draw_3d_wall(reticleBuffer, -sSize,-sSize,sSize,sSize, 0, 1,1,c_white)
vertex_end(reticleBuffer);
