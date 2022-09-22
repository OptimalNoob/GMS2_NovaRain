/// @desc
audio_play_sound(sndWoosh, 10, false);
play_title = false;
spawn_delay = false;
spawn_buttons = false;
flash_alph = 1;
row_1_start		= -500;
row_1_end		= 48;

row_2_start		= room_height + 500;
row_2_end		= row_1_end + 41;

row_3_start		= room_height + 1000;
row_3_end		= row_1_end + 83;

let_wid = 118;
let_marg = 8;

row_1_y			= row_1_start;
row_2_y			= row_2_start;
row_3_y			= row_3_start;

col_1_x			= 106;
col_2_x			= col_1_x + let_wid + let_marg;
col_3_x			= col_2_x + let_wid + let_marg;
col_4_x			= col_3_x + let_wid + let_marg;
col_5_x			= col_4_x + let_wid + let_marg * 10;
col_6_x			= col_5_x + let_wid + let_marg;
col_7_x			= col_6_x + let_wid + let_marg;
col_8_x			= col_7_x + let_wid + let_marg;

let_speed = 0.001;

let_n[0] = n_1;
let_n[1] = n_2;

let_o[0] = o_1;
let_o[1] = o_2;
let_o[2] = o_3;

let_v[0] = v_1;
let_v[1] = v_2;
let_v[2] = v_3;

let_a[0] = a_1;
let_a[1] = a_2;
let_a[2] = a_3;

let_r[0] = r_1;
let_r[1] = r_2;
let_r[2] = r_3;

let_i[0] = i_1;
let_i[1] = i_2;
let_i[2] = i_3;

title_but[0] = oBTN_startgame;
title_but[1] = oBTN_howto;
title_but[2] = oBTN_credits;
title_but[3] = oBTN_quit;

but_y[0] = 336;
but_y[1] = 450;
but_y[2] = 545;
but_y[3] = 644;