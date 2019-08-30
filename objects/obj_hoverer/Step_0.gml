if(new_game == true) {
	x = start_x;
	y = start_y;
	new_game = false;
}

if(hunt && moves > 0 && obj_store.stagger_count > 4) {
	moves -= 1;
	var coords = near_player();
	var near_path = path_add();
	mp_grid_path(global.room_grid, near_path, x, y, coords[0], coords[1], false);
	path_start(near_path, 16, path_action_stop, true);
} else if(!hunt && moves > 0) {
	moves -= 1;
	scatter(self, "bottom_left");
} else {
	path_end()
}

if(!hunt) {
	sprite_index = spr_hoverer_hunted;
} else {
	sprite_index = spr_hoverer;
}