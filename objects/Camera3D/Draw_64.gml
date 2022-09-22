/// @desc Debug Drawing

if(slide_tran){
	if(alarm[2] == -1) alarm[2] = 160;
	draw_sprite(sSlidTran, 0, 0, 0 + slide_1);
	draw_sprite(sSlidTran, 0, 0, display_get_gui_height() / 2 + slide_2);
	
	slide_1 = lerp(slide_1, -1000, slide_speed);
	slide_2 = lerp(slide_2, 1000, slide_speed);
	slide_speed += 0.001;
};

draw_set_color(c_white);
//draw_text(16,16,frame_count);
//frame_count++;
var mouse_gui_x = device_mouse_x_to_gui(0);
var mouse_gui_y = device_mouse_y_to_gui(0);
var gui_h = display_get_gui_height();
var gui_w = display_get_gui_height();
switch(room){
	case rLevel07:
	draw_sprite(sVignette, 0, 0, 0);
	break;
	default: break;
};

if(DebugMode && InLevel){
draw_set_color(c_white);
draw_text(16,16 * 1,		"FPS: "		+ string(fpsOut));
draw_text(16,16 * 3,		"[Camera]");
draw_text(16,16 * 4,		"X: "		+ string(camx));
draw_text(16,16 * 5,		"Y: "		+ string(camy));
draw_text(16,16 * 6,		"Z: "		+ string(camz));
draw_text(16,16 * 7,		"Zoom: "	+ string(zoom));

if(follow != noone){
	draw_text(16,16 * 9,	"[Player]");
	draw_text(16,16 * 10,	"X: "	+ string(follow.x));
	draw_text(16,16 * 11,	"Y: "	+ string(follow.y));
	draw_text(16,16 * 12,	"xmov: "	+ string(follow.xmov));
	draw_text(16,16 * 13,	"ymov: "	+ string(follow.ymov));
};

draw_text(16,16 * 15, "[Mouse]");
draw_text(16,16 * 16, "XGUI: " + string(mouse_gui_x));
draw_text(16,16 * 17, "YGUI: " + string(mouse_gui_y));
draw_text(16,16 * 18, "X: " + string(device_mouse_x(0)));
draw_text(16,16 * 19, "Y: " + string(device_mouse_y(0)));
if(instance_exists(Bullet01)){
	draw_text(16,16 * 20, "Bullet Count: " + string(instance_number(Bullet01)));
};

draw_text(16,16 * 22, "Score: " + string(PlayerPoints));
draw_text(16,16 * 23, "Player Z: " + string(oPlayer.depth));
};

if(InLevel){

#region HelthBar
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(fntDefault);
var hb_w = 200;
var hb_h = 40;

draw_set_color(c_black);
draw_rectangle(
			16,
			gui_h - hb_h - 40,
			90,
			gui_h - hb_h - 10,
			false);
draw_set_color(c_white);
draw_text(32, gui_h - hb_h - 34, "HULL");
draw_set_color(c_black);
draw_rectangle(
			16,
			gui_h - hb_h - 16,
			16 + hb_w,
			gui_h - hb_h - 16 + hb_h,
			false);
draw_set_color(c_red);
draw_rectangle(
			16 + 4,
			gui_h - hb_h - 16 + 4,
			20 + ((hb_w - 8) * (PlayerHP / PlayerMAXHP)),
			gui_h - hb_h - 16 + hb_h - 4,
			false);
draw_set_color(c_white);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_font(fntDefault);
draw_text(120, gui_h - hb_h + 6, string(PlayerHP) + " / " + string(PlayerMAXHP));
for(i = 0; i < PlayerSpecial; i++){
	draw_sprite(sBomb_icon, 0, 96 + (24 * i), 643);
};
#endregion
};

draw_set_valign(fa_top);
draw_set_halign(fa_left);