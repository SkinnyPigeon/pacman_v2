randomize()
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

previous_index = index;
coords = path_array[index];
if(hunt && moves > 0) {
	moves -= 1;
	var corner_path = path_add();
	mp_grid_path(global.room_grid, corner_path, x, y, coords[0], coords[1], false);
	path_start(corner_path, 16, path_action_stop, true);
} else if(!hunt && moves > 0) {
	moves -= 1;
	scatter(self, "top_left");
} else {
	path_end()
}