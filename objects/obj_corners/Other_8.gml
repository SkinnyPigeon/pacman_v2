randomize()
if(path_exists(corner_path)){
	path_delete(corner_path);
}
var index = irandom(3);

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

var coords = path_array[index];

corner_path = path_add();
mp_grid_path(global.room_grid, corner_path, x, y, coords[0], coords[1], false);

path_start(corner_path, 8, path_action_stop, true);
