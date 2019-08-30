randomize()
index = irandom(3);
if(index == previous_index) {
	switch(index) {
		case(0):
			index = 1;
			break;
		case(1):
			index = 2;
			break;
		case(2):
			index = 3;
			break;
		case(3):
			index = 0;
			break;
	}
}

previous_index = index;
coords = path_array[index];

if(hunt && moves > 0  && global.difficulty < 2) {
	if(turner_chase == true && point_distance(x, y, obj_player.x, obj_player.y) > 100) {
		moves -= 1;
		var turner_path = path_add();
		mp_grid_path(global.room_grid, turner_path, x, y, obj_player.x, obj_player.y, false);
		path_start(turner_path, 16, path_action_stop, true);
	} else {
		moves -= 1;
		turner_chase = false
		var turner_path = path_add();
		mp_grid_path(global.room_grid, turner_path, x, y, coords[0], coords[1], false);
		path_start(turner_path, 16, path_action_stop, true);
	}
} else if(!hunt && moves > 0 && global.difficulty < 2) {
	moves -= 1;
	scatter(self, "bottom_right");
} else if (global.difficulty < 2){
	path_end()
}

if(hunt && global.difficulty > 1) {
	if(turner_chase == true && point_distance(x, y, obj_player.x, obj_player.y) > 100) {
		moves -= 1;
		var turner_path = path_add();
		mp_grid_path(global.room_grid, turner_path, x, y, obj_player.x, obj_player.y, false);
		path_start(turner_path, 8, path_action_stop, true);
	} else {
		moves -= 1;
		turner_chase = false
		var turner_path = path_add();
		mp_grid_path(global.room_grid, turner_path, x, y, coords[0], coords[1], false);
		path_start(turner_path, 8, path_action_stop, true);
	}
} else if(!hunt && global.difficulty > 1) {
	moves -= 1;
	scatter(self, "bottom_right");
} 