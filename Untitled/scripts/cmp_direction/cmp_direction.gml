///@description cmp_direction(enemy_x, enemy_y, direction_choice)
///@param enemy_x
///@param enemy_y
///@param direction_choice

var enemy_x = argument0;
var enemy_y = argument1;
var direction_choice = argument2;

var pos_or_neg = 1;

switch(direction_choice) {
	case(-1):
		pos_or_neg = cmp(enemy_y, obj_player.y);
		break;
	case(0):
		pos_or_neg = cmp(enemy_y, obj_player.y);
		break;
	case(1):
		pos_or_neg = cmp(enemy_x, obj_player.x);
		break;
}

return pos_or_neg;