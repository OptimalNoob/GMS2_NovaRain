/// @desc Camera Init

window_set_cursor(cr_arrow);

// Setup Transition
slide_tran = true;
slide_1 = 0;
slide_2 = 0;
slide_speed = 0.001;

//fps update timer
fpsOut = "";
done = false;

// Create Game Camera
Cam = camera_create();

// Set Camera to middle of Room
camx = room_width / 2;
camy = room_height / 2;

display_mouse_set(display_get_width() / 2, display_get_height() / 2);

alarm[0] = 10;

cam_w = camera_get_view_width(Cam);
cam_h = camera_get_view_height(Cam);

// Camera Matrices
var vm = matrix_build_lookat(camx,camy,0,camx,camy,5000,0,1,0);
var pm = matrix_build_projection_ortho(1280,720,0,5000);
camera_set_view_mat(Cam, vm);
camera_set_proj_mat(Cam, pm);

view_camera[0] = Cam;
view_enabled[0] = true;
view_visible[0] = true;