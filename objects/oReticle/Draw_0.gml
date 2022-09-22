/// @desc
// You can write your code in this editor
matrix = matrix_build(xmov,ymov,zmov,0,0,270,1,1,1);
matrix_set(matrix_world, matrix);
vertex_submit(reticleBuffer, pr_trianglelist, sprite_get_texture(sReticle, 0));


matrix_set(matrix_world, matrix_build_identity());
