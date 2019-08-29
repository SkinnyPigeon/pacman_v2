if(hunt == true && point_distance(x, y, obj_player.x, obj_player.y) > 100) {
	var turner_path = path_add();
	mp_grid_path(global.room_grid, turner_path, x, y, obj_player.x, obj_player.y, false);
	path_start(turner_path, 8, path_action_stop, true);
} else {
	hunt = false
	turner_path = path_add();
	mp_grid_path(global.room_grid, turner_path, x, y, 80, 80, false);
	path_start(turner_path, 8, path_action_stop, true);
}

if(point_distance(x, y, obj_player.x, obj_player.y) > 500) {
	hunt = true;
}