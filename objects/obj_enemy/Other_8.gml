//show_message(frames);
//if(frames > 0) {
//	ai_path = path_add();
//	mp_grid_path(global.room_grid, ai_path, x, y, obj_player.x, obj_player.y, false);
//	path_start(ai_path, 16, path_action_stop, true);
//	frames -= 1;
//}
var x_or_y = compare_coords(x, y);	
var direction_choice = cmp(x_or_y[0], x_or_y[1]);
var pos_or_neg = cmp_direction(x, y, direction_choice);
enemy_path(x, y, direction_choice, pos_or_neg);