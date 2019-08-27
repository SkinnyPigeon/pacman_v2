///@description check_position(path_x, path_y)
///@param path_x
///@param path_y

var path_x = argument0
var path_y = argument1

if(path_x <= obj_player.x + 32 && path_x >= obj_player.x - 32)
&&(path_y <= obj_player.y + 32 && path_y >= obj_player.y -32) {
	return true
}

