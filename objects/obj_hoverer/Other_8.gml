if(moves > 0) {
	moves -= 1;
	var coords = near_player();

	var near_path = path_add();
	mp_grid_path(global.room_grid, near_path, x, y, coords[0], coords[1], false);

	path_start(near_path, 16, path_action_stop, true);
	//if !place_snapped(32, 32) {
	//	move_snap(32, 32);
	//}
} else {
	path_end()
}