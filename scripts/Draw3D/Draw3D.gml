function draw_3d_point(_buf, _x,_y,_z,_normx, _normy, _normz, _u, _v, _color, _alpha){
	vertex_position_3d(_buf, _x, _y, _z);
	vertex_normal(_buf, _normx,_normy,_normz);
	vertex_texcoord(_buf, _u,_v);
	vertex_color(_buf, _color, _alpha);
};

function draw_3d_floor(vbuffer,x1,z1,x2,z2, _y, color){

	draw_3d_point(vbuffer, x1, _y, z1, 0,1,0,1,1,color,1);
	draw_3d_point(vbuffer, x1, _y, z2, 0,1,0,1,0,color,1);
	draw_3d_point(vbuffer, x2, _y, z2, 0,1,0,0,0,color,1);
	
	draw_3d_point(vbuffer, x2, _y, z2, 0,1,0,0,0,color,1);
	draw_3d_point(vbuffer, x2, _y, z1, 0,1,0,0,1,color,1);
	draw_3d_point(vbuffer, x1, _y, z1, 0,1,0,1,1,color,1);
};

function draw_3d_wall(vbuffer,x1,y1,x2,y2,_z,_u,_v,color){
	
	draw_3d_point(vbuffer, x1, y1, _z, 0,1,0,_u,_v,color,1);
	draw_3d_point(vbuffer, x1, y2, _z, 0,1,0,_u,0,color,1);
	draw_3d_point(vbuffer, x2, y2, _z, 0,1,0,0,0,color,1);
	
	draw_3d_point(vbuffer, x2, y2, _z, 0,1,0,0,0,color,1);
	draw_3d_point(vbuffer, x2, y1, _z, 0,1,0,0,_v,color,1);
	draw_3d_point(vbuffer, x1, y1, _z, 0,1,0,_u,_v,color,1);
};


function draw_3d_cube(buf, x1,y1,z1,x2,y2,z2){	
	// Front Side
	draw_3d_point(buf, x1, y1, z1, 0,0,1,1,1,c_white,1);
	draw_3d_point(buf, x1, y2, z1, 0,0,1,1,0,c_white,1);
	draw_3d_point(buf, x2, y2, z1, 0,0,1,0,0,c_white,1);

	draw_3d_point(buf, x2, y2, z1, 0,0,1,0,0,c_white,1);
	draw_3d_point(buf, x2, y1, z1, 0,0,1,0,1,c_white,1);
	draw_3d_point(buf, x1, y1, z1, 0,0,1,1,1,c_white,1);
	
	// Left Side
	draw_3d_point(buf, x1, y1, z1, 0,0,1,1,1,c_white,1);
	draw_3d_point(buf, x1, y2, z1, 0,0,1,1,0,c_white,1);
	draw_3d_point(buf, x1, y2, z2, 0,0,1,0,0,c_white,1);
				  
	draw_3d_point(buf, x1, y2, z2, 0,0,1,0,0,c_white,1);
	draw_3d_point(buf, x1, y1, z2, 0,0,1,0,1,c_white,1);
	draw_3d_point(buf, x1, y1, z1, 0,0,1,1,1,c_white,1);
	
	// Back Side
	draw_3d_point(buf, x1, y1, z2, 0,0,1,1,1,c_white,1);
	draw_3d_point(buf, x1, y2, z2, 0,0,1,1,0,c_white,1);
	draw_3d_point(buf, x2, y2, z2, 0,0,1,0,0,c_white,1);
				  
	draw_3d_point(buf, x2, y2, z2, 0,0,1,0,0,c_white,1);
	draw_3d_point(buf, x2, y1, z2, 0,0,1,0,1,c_white,1);
	draw_3d_point(buf, x1, y1, z2, 0,0,1,1,1,c_white,1);
	
	// Right Side
	draw_3d_point(buf, x2, y1, z2, 0,0,1,1,1,c_white,1);
	draw_3d_point(buf, x2, y2, z2, 0,0,1,1,0,c_white,1);
	draw_3d_point(buf, x2, y2, z1, 0,0,1,0,0,c_white,1);
										 
	draw_3d_point(buf, x2, y2, z1, 0,0,1,0,0,c_white,1);
	draw_3d_point(buf, x2, y1, z1, 0,0,1,0,1,c_white,1);
	draw_3d_point(buf, x2, y1, z2, 0,0,1,1,1,c_white,1);
	
	// Top Side
	draw_3d_point(buf, x1, y2, z1, 0,0,1,1,1,c_white,1);
	draw_3d_point(buf, x1, y2, z2, 0,0,1,1,0,c_white,1);
	draw_3d_point(buf, x2, y2, z2, 0,0,1,0,0,c_white,1);
										 
	draw_3d_point(buf, x2, y2, z2, 0,0,1,0,0,c_white,1);
	draw_3d_point(buf, x2, y2, z1, 0,0,1,0,1,c_white,1);
	draw_3d_point(buf, x1, y2, z1, 0,0,1,1,1,c_white,1);
												 
	// Bottom Side								 
	draw_3d_point(buf, x1, y1, z1, 0,0,1,1,1,c_white,1);
	draw_3d_point(buf, x1, y1, z2, 0,0,1,1,0,c_white,1);
	draw_3d_point(buf, x2, y1, z2, 0,0,1,0,0,c_white,1);
										 
	draw_3d_point(buf, x2, y1, z2, 0,0,1,0,0,c_white,1);
	draw_3d_point(buf, x2, y1, z1, 0,0,1,0,1,c_white,1);
	draw_3d_point(buf, x1, y1, z1, 0,0,1,1,1,c_white,1);
};

function draw_3d_cube_destroyed(buf, x1,y1,z1,x2,y2,z2){	
	// Front Side
	draw_3d_point(buf, x1, y1, z1, 0,0,1,1,1,c_white,1);
	draw_3d_point(buf, x1, y2, z1, 0,0,1,1,0,c_white,1);
	draw_3d_point(buf, x2, y2, z1, 0,0,1,0,0,c_white,1);

	draw_3d_point(buf, x2, y2, z1, 0,0,1,0,0,c_white,1);
	draw_3d_point(buf, x2, y1, z1, 0,0,1,0,1,c_white,1);
	draw_3d_point(buf, x1, y1, z1, 0,0,1,1,1,c_white,1);
	
	// Left Side
	draw_3d_point(buf, x1, y1, z1, 0,0,1,1,1,c_white,1);
	draw_3d_point(buf, x1, y2, z1, 0,0,1,1,0,c_white,1);
	draw_3d_point(buf, x1, y2, z2, 0,0,1,0,0,c_white,1);
				  
	draw_3d_point(buf, x1, y2, z2, 0,0,1,0,0,c_white,1);
	draw_3d_point(buf, x1, y1, z2, 0,0,1,0,1,c_white,1);
	draw_3d_point(buf, x1, y1, z1, 0,0,1,1,1,c_white,1);
	
	// Back Side
	draw_3d_point(buf, x1, y1, z2, 0,0,1,1,1,c_white,1);
	draw_3d_point(buf, x1, y2, z2, 0,0,1,1,0,c_white,1);
	draw_3d_point(buf, x2, y2, z2, 0,0,1,0,0,c_white,1);
				  
	draw_3d_point(buf, x2, y2, z2, 0,0,1,0,0,c_white,1);
	draw_3d_point(buf, x2, y1, z2, 0,0,1,0,1,c_white,1);
	draw_3d_point(buf, x1, y1, z2, 0,0,1,1,1,c_white,1);
	
	// Right Side
	draw_3d_point(buf, x2, y1, z2, 0,0,1,1,1,c_white,1);
	draw_3d_point(buf, x2, y2, z2, 0,0,1,1,0,c_white,1);
	draw_3d_point(buf, x2, y2, z1, 0,0,1,0,0,c_white,1);
										 
	draw_3d_point(buf, x2, y2, z1, 0,0,1,0,0,c_white,1);
	draw_3d_point(buf, x2, y1, z1, 0,0,1,0,1,c_white,1);
	draw_3d_point(buf, x2, y1, z2, 0,0,1,1,1,c_white,1);

	// Bottom Side								 
	draw_3d_point(buf, x1, y1, z1, 0,0,1,1,1,c_white,1);
	draw_3d_point(buf, x1, y1, z2, 0,0,1,1,0,c_white,1);
	draw_3d_point(buf, x2, y1, z2, 0,0,1,0,0,c_white,1);
										 
	draw_3d_point(buf, x2, y1, z2, 0,0,1,0,0,c_white,1);
	draw_3d_point(buf, x2, y1, z1, 0,0,1,0,1,c_white,1);
	draw_3d_point(buf, x1, y1, z1, 0,0,1,1,1,c_white,1);
};