///@description player_path(input_arrays)
///@param input_arrays

var input_arrays = argument0;

var x_array = input_arrays[0];
var y_array = input_arrays[1];

var array_length = array_length_1d(x_array);

for(var i = 0; i < array_length; i++) {
	var path = path_add();
	mp_linear_path(path, x_array[i], y_array[i], 8, 0);
	path_start(path, 16,  path_action_stop, 1);
}