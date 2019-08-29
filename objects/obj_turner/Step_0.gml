if(hunt && moves > 0 && obj_store.stagger_count > 3) {
	if(turner_chase == true && point_distance(x, y, obj_player.x, obj_player.y) > 100) {
		moves -= 1;
		var turner_path = path_add();
		mp_grid_path(global.room_grid, turner_path, x, y, obj_player.x, obj_player.y, false);
		path_start(turner_path, 16, path_action_stop, true);
	} else {
		moves -= 1;
		turner_chase = false
		turner_path = path_add();
		mp_grid_path(global.room_grid, turner_path, x, y, 80, 80, false);
		path_start(turner_path, 16, path_action_stop, true);
	}
} else if(!hunt && moves > 0) {
	moves -= 1;
	scatter(self, "bottom_right");
} else {
	path_end()
}

if(point_distance(x, y, obj_player.x, obj_player.y) > 500) {
	turner_chase = true;
}

contact(self);