if(hunt && moves > 0) {
	moves -= 1
	var corner_path = path_add();
	mp_grid_path(global.room_grid, corner_path, x, y, coords[0], coords[1], false);
	path_start(corner_path, 8, path_action_stop, true);
} else if(!hunt && moves > 0) {
	moves -= 1;
	scatter(self, "top_left");
} else {
	path_end()
}

contact(self);