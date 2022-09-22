/// @desc
var _x = room_width / 2;
var _y = room_height / 6;
var _offset = 164
var _pad = 48;

draw_set_font(fntCredits);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(_x,_y, "Programming");
draw_text(_x,_y + _offset, "Art and Sounds");
draw_text(_x,_y + (_offset * 2), "Music");

draw_set_font(fntCredits2);

draw_text(_x,_y + _pad, "George (UltraAceCombat)\nJake (OptimalNoob)");
draw_text(_x,_y + _offset + _pad, "Jake (OptimalNoob)\nJulianne (warguards)");
draw_text(_x,_y + (_offset * 2) + _pad, "Josh\n(@soundcloud/bluecapbeats)");

draw_set_halign(fa_left);
draw_set_font(fntDefault);

//draw_text(16,room_height - 32, "Q - Go Back");