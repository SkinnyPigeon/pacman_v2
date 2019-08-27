///@description check_position(path_x, path_y, check_x, check_y)
///@param path_x
///@param path_y
///@param check_x
///@param check_y

var path_x = argument0
var path_y = argument1
var check_x = argument2
var check_y = argument3

if(path_x <= check_x + 32 && path_x >= check_x - 32)
&&(path_y <= check_y + 32 && path_y >= check_y - 32)
&&!((path_x = check_x + 32 && path_y = check_y + 32)
|| (path_x = check_x - 32 && path_y = check_y + 32)
|| (path_x = check_x + 32 && path_y = check_y - 32)
|| (path_x = check_x - 32 && path_y = check_y - 32)){
	return true
}

