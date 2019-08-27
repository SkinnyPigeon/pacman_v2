//frames = obj_store.enemy_moves * 2;
//obj_store.enemy_moves = 0;
//if(frames > 0) {
	var x_or_y = compare_coords(x, y);	
	var direction_choice = cmp(x_or_y[0], x_or_y[1]);
	var pos_or_neg = cmp_direction(x, y, direction_choice);
	enemy_path(x, y, direction_choice, pos_or_neg);
//	frames -= 1;
//}
