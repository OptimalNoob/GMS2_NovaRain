/// @desc

zmov -= FloorSpeed
if(alarm[0] == -1){
	var matrix = matrix_build(xmov,ymov,zmov,0,0,0,1,1,1)
	matrix_set(matrix_world, matrix)
	vertex_submit(CubeBuffer, pr_trianglelist, sprite_get_texture(tex,0))
	matrix_set(matrix_world, matrix_build_identity())
};
if(DebugMode)
draw_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top,true)