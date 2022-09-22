/// @desc
skyBuffer = vertex_create_buffer();

x1 = -4096 * 3
y1 = scene.ground + 512
x2 = 4096 * 3
y2 = -4096
z = 4096


vertex_begin(skyBuffer, Camera3D.format);
draw_3d_wall(skyBuffer, x1, y1, x2, y2, z, 1,1,c_white);
vertex_end(skyBuffer);