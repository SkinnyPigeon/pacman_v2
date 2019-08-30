draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var score_string = "SCORE: " + string(score);
draw_text_transformed(room_width / 3, 1056, score_string, 2.5, 2.5, 0);


for (var i = 0; i < array_length_1d(obj_store.lives_array); i++) {
	draw_sprite(obj_store.lives_array[i], 0, room_width - (room_width / 3) + 34 * i, 1056)
}
