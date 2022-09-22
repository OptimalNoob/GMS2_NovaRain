///@desc Update Position
var vm = matrix_build_lookat(camx,camy,camz,lookx,looky,lookz,0,1,0);
camera_set_view_mat(Cam,vm);