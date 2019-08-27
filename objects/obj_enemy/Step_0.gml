frames = obj_store.enemy_moves * 2;
obj_store.enemy_moves = 0;
if(frames > 0) {
	//ai_path = path_add();
	//mp_grid_path(global.room_grid, ai_path, x, y, obj_player.x, obj_player.y, false);
	//path_start(ai_path, 16, path_action_stop, true);
	
	var check = cmp(10, 5);
	show_message(check);
	frames -= 1;
}
