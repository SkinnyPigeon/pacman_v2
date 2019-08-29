contact(self);
if(hunt && moves > 0) {
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
contact(self);