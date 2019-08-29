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
		destination_x = 720;
		destination_y = 208;
		path_to_loop = top_right;
	case("top_left"):
		destination_x = 80;
		destination_y = 80;
		path_to_loop = top_left;
	case("bottom_left"):
		destination_x = 240;
		destination_y = 848;
		path_to_loop = bottom_left;
	case("bottom_right"):
		destination_x = 624;
		destination_y = 752;
		path_to_loop = bottom_right;
		

}

if(enemy.x == destination_x && enemy.y == destination_y) {
	enemy.looping = true;
	if(enemy.moves > 0) {
		enemy.moves -= 1
		path_start(path_to_loop, 8, path_action_restart, true);
	}
	
} else if (enemy.looping == false){
	//if(enemy.moves > 0) {
	//	enemy.moves -= 1
		var path = path_add();
		mp_grid_path(global.room_grid, path, enemy.x, enemy.y, destination_x, destination_y, false)
		path_start(path, 16, path_action_stop, true);
	//}
}
