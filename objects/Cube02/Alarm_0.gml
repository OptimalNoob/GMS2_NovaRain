/// @desc

x1 = -cube_width / 2;
y2 = 0;
z1 = -cube_depth / 2;
y1 = cube_height;
x2 = cube_width / 2;
z2 = cube_depth / 2;
vertex_begin(CubeBuffer, Camera3D.format);
draw_3d_cube_destroyed(CubeBuffer,
			x1,
			y1,
			z1,
			x2,
			y2,
			z2);
vertex_end(CubeBuffer);


x = xmov;
y = ymov + cube_height / 2
depth = zmov;

image_xscale = cube_width / BLOCK_SIZE;
image_yscale = cube_height / BLOCK_SIZE;
zbound = cube_depth / 2;