///@desc Healthbar

gui_w = display_get_gui_width();
hb_w = 600;
hb_h = 20;
diff = 2;

draw_set_font(fntDefault);
draw_text(gui_w / 2 - hb_w / 2 - 64, 19, "ENEMY: ");

draw_set_color(c_white);
draw_rectangle(gui_w / 2 - hb_w / 2, 16,
				gui_w / 2 + hb_w / 2, 16 + hb_h,
				false);
draw_set_color(c_red);
draw_rectangle(gui_w / 2 - hb_w / 2 + diff, 16 + diff,
				(gui_w / 2 - hb_w / 2 + diff) + ((hb_w - 4) * (FinalBoss.hp / bossMAXHealth)), 16 + hb_h - diff,
				false);
