///@description corner_special_scatter(enemy, destination_name)
///@param enemy
///@param destination_name

var enemy = argument0;
var destination_name = argument1;

var destination_x = 0;
var destination_y = 0;

switch(destination_name) {
	case("top_right"):
		destination_x = 912;
		destination_y = 80;
		break;
	case("top_left"):
		destination_x = 112;
		destination_y = 80;
		break;
	case("bottom_left"):
		destination_x = 112;
		destination_y = 944;
		break;
	case("bottom_right"):
		destination_x = 912;
		destination_y = 944;
		break;
}

var scatter_path = path_add();
mp_grid_path(global.room_grid, scatter_path, enemy.x, enemy.y, destination_x, destination_y, false)
path_start(scatter_path, 8, path_action_stop, true);


if(enemy.x == destination_x && enemy.y == destination_y) {
	enemy.hunt = true;
}