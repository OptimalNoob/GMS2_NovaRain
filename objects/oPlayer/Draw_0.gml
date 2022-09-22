/// @desc

if(!LevelEnd){
	for(i=0;i<5;i++){
		xmov = lerp(xmov,device_mouse_x_to_gui(0),pLerp[i]);
		ymov = lerp(ymov,device_mouse_y_to_gui(0) + vert_off,pLerp[i]);
	
		matrix[i] = matrix_build(xmov,ymov,zmov + i,0,0,180,1,1,1);
		matrix_set(matrix_world, matrix[i]);
		vertex_submit(playerBuffer[i], pr_trianglelist, sprite_get_texture(sShip, i));
	}
	matrix_set(matrix_world, matrix_build_identity());
}else{
	depth += 64;
	for(i=0;i<5;i++){
		matrix[i] = matrix_build(xmov,ymov,zmov + i,0,0,180,1,1,1);
		matrix_set(matrix_world, matrix[i]);
		vertex_submit(playerBuffer[i], pr_trianglelist, sprite_get_texture(sShip, i));
	}
	matrix_set(matrix_world, matrix_build_identity());
};
if(DebugMode){
	draw_set_color(c_red);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
};
draw_set_color(c_white);