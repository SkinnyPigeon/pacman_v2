moves = 0;
previous_index = 0;
path_array = [[112, 144], [912, 144], [112, 752], [912, 752]]
hunt = true;
index = irandom(3);
coords = path_array[index]

dead = false;
dead_timer = 3;

ready_to_teleport = 0;

//if(hunt && obj_store.difficulty == 1) {
//	var corner_path = path_add();
//	mp_grid_path(global.room_grid, corner_path, x, y, coords[0], coords[1], false);
//	path_start(corner_path, 8, path_action_stop, true);
//} else if(!hunt && obj_store.difficulty == 1) {
//	scatter(self, "top_left");
//} else if (obj_store.difficulty == 1) {
//	path_end()
//}

start_x = 592;
start_y = 496;