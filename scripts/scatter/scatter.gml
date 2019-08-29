///@description scatter(enemy, destination_name)
///@param enemy
///@param destination_name

var enemy = argument0;
var destination_name = argument1;

var destination_x = 0;
var destination_y = 0;
var path_to_loop = "";

switch(destination_name) {
	case("top_right"):
		destination_x = 880;
		destination_y = 80;
		path_to_loop = top_right;
		break;
	case("top_left"):
		destination_x = 80;
		destination_y = 80;
		path_to_loop = top_left;
		break;
	case("bottom_left"):
		destination_x = 80;
		destination_y = 944;
		path_to_loop = bottom_left;
		break;
	case("bottom_right"):
		destination_x = 880;
		destination_y = 944;
		path_to_loop = bottom_right;
		break;
}

var scatter_path = path_add();
mp_grid_path(global.room_grid, scatter_path, enemy.x, enemy.y, destination_x, destination_y, false)
path_start(scatter_path, 16, path_action_stop, true);


if(enemy.x == destination_x && enemy.y == destination_y) {
	enemy.hunt = true;
}



//if(enemy.looping == true) {
//	path_delete(scatter_path);
//	path_(path_to_loop, 8, path_action_continue, true);
//} 