/// @desc
// You can write your code in this editor



var matrix = matrix_build(xmov,ymov,zmov,0,0,0,1,1,1)
matrix_set(matrix_world, matrix)
vertex_submit(bulletBuffer, pr_trianglelist, sprite_get_texture(sBullet,0))
matrix_set(matrix_world, matrix_build_identity())

if(DebugMode){
	draw_set_color(c_red);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
};
draw_set_color(c_white);