///@description player_path(input_arrays)
///@param input_arrays

var input_arrays = argument0;

var x_array = input_arrays[0];
var y_array = input_arrays[1];

var array_length = array_length_1d(x_array)

if(obj_store.index_of_path < array_length) {
	var path = path_add();
	mp_linear_path(path, x_array[obj_store.index_of_path], y_array[obj_store.index_of_path], 8, 0);
	path_start(path, 16,  path_action_stop, 1);
	obj_store.index_of_path += 1;
}
