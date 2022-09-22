/// @desc
init_globals();
audio_group_load(ag_music);
audio_group_load(ag_sfx);
draw_set_font(fntDefault);

surface_resize(application_surface, 1280, 720);
window_set_size(1280, 720);
display_set_gui_size(1280, 720);