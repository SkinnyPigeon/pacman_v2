if(new_game == true) {
	x = start_x;
	y = start_y;
	new_game = false;
}

if(hunt && moves > 0 && obj_store.stagger_count > 1 && global.difficulty == 0) {
	moves -= 1
	var corner_path = path_add();
	mp_grid_path(global.room_grid, corner_path, x, y, coords[0], coords[1], false);
	path_start(corner_path, 16, path_action_stop, true);
} else if(!hunt && moves > 0 && global.difficulty == 0) {
	moves -= 1;
	scatter(self, "top_left");
} else if (global.difficulty == 0) {
	path_end()
}


if(hunt && global.difficulty > 0) {
	var corner_path = path_add();
	mp_grid_path(global.room_grid, corner_path, x, y, coords[0], coords[1], false);
	path_start(corner_path, 8, path_action_stop, true);
} else if(!hunt && global.difficulty > 0) {
	corner_special_scatter(self, "top_left");
} 

if(!hunt) {
	sprite_index = spr_corners_hunted;
} else {
	sprite_index = spr_corners;
}