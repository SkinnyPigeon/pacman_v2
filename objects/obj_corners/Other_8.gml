randomize()
//if(path_exists(corner_path)){
//	path_delete(corner_path);
//}
index = irandom(3);
show_message(index);
show_message(previous_index);
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
show_message(index);

previous_index = index;
coords = path_array[index];
if(moves > 0) {
	moves -= 1;
	var corner_path = path_add();
	mp_grid_path(global.room_grid, corner_path, x, y, coords[0], coords[1], false);
	path_start(corner_path, 16, path_action_stop, true);
} else {
	path_end();
}

//if(moves > 0) {
//	moves -= 1;
//	var hunter_path = path_add();
//	mp_grid_path(global.room_grid, hunter_path, x, y, obj_player.x, obj_player.y, false);
//	path_start(hunter_path, 16, path_action_stop, true);
//} else {
//	path_end()
//}