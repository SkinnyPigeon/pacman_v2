if(hunt && moves > 0) {
	if(turner_chase == true && point_distance(x, y, obj_player.x, obj_player.y) > 100) {
		moves -= 1;
		var turner_path = path_add();
		mp_grid_path(global.room_grid, turner_path, x, y, obj_player.x, obj_player.y, false);
		path_start(turner_path, 8, path_action_stop, true);
	} else {
		moves -= 1;
		turner_chase = false
		turner_path = path_add();
		mp_grid_path(global.room_grid, turner_path, x, y, 80, 80, false);
		path_start(turner_path, 8, path_action_stop, true);
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

//if(instance_place(x, y, obj_player)) {
//	if(hunt) {
//		//game_restart()
//		show_debug_message("DEAD")
//	} else {
//		score += 2000;
//		self.x = 464;
//		self.y = 400;
//		hunt = true;
//	}
//}

contact(self);