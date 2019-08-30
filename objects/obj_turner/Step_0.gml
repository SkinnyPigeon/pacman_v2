if(new_game == true) {
	x = start_x;
	y = start_y;
	new_game = false;
}

if(hunt && moves > 0 && obj_store.stagger_count > 2) {
	if(turner_chase == true && point_distance(x, y, obj_player.x, obj_player.y) > 100) {
		path_end();
		moves -= 1;
		var turner_path = path_add();
		mp_grid_path(global.room_grid, turner_path, x, y, obj_player.x, obj_player.y, false);
		path_start(turner_path, 16, path_action_stop, true);
	} else {
		path_end()
		moves -= 1;
		turner_chase = false
		var turner_path = path_add();
		mp_grid_path(global.room_grid, turner_path, x, y, coords[0], coords[1], false);
		path_start(turner_path, 16, path_action_stop, true);
	}
} else if(!hunt && moves > 0) {
	moves -= 1;
	scatter(self, "bottom_right");
} else {
	path_end()
}

if(point_distance(x, y, obj_player.x, obj_player.y) > 500) {
	//path_end()
	turner_chase = true;
}

if(!hunt) {
	sprite_index = spr_turner_hunted;
} else {
	sprite_index = spr_turner;
}
