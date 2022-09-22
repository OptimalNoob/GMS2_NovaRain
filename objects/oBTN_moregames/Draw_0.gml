/// @desc
draw_self();
if(position_meeting(mouse_x,mouse_y,id)){
	draw_set_font(fntCredits);
	draw_set_valign(fa_bottom);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(x - sprite_get_width(sBTN_moregames) / 2,y - 48,
	"Visit\n'https://optimalscrub.itch.io/'\nfor more!"); 
};
draw_set_valign(fa_top);
draw_set_halign(fa_left);