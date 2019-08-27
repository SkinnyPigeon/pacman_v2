///@description enemy_path(enemy_x, enemy_y, direction_choice, pos_or_neg)
///@param enemy_x
///@param enemy_y
///@param direction_choice
///@param pos_or_neg

var enemy_x = argument0;
var enemy_y = argument1;
var direction_choice = argument2;
var pos_or_neg = argument3;

var multiplier = 1;

multiplier *= pos_or_neg;


var ai_path = path_add();

switch(direction_choice) {
	case(-1):
		mp_grid_path(global.room_grid, ai_path, enemy_x, enemy_y, enemy_x, enemy_y - (32 * multiplier), false);
		path_start(ai_path, 16, path_action_stop, true);
		break;
	case(0):
		mp_grid_path(global.room_grid, ai_path, enemy_x, enemy_y, enemy_x, enemy_y - (32 * multiplier), false);
		path_start(ai_path, 16, path_action_stop, true);
		break;
	case(1):
		mp_grid_path(global.room_grid, ai_path, enemy_x, enemy_y, enemy_x - (32 * multiplier), enemy_y, false);
		path_start(ai_path, 16, path_action_stop, true);
		break;
		
}
