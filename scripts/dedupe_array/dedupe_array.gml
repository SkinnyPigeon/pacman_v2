///@description dedupe_array(original_array)
///@param original_array

var original_array = argument0;

var original_length = array_length_1d(original_array);

var output_array = [];
var j = 0;

for(var i = 0; i < original_length - 1; i++) {
	if(original_array[i] != original_array[i + 1]) {
		output_array[j] = original_array[i];;
		j++
	}
}

var new_length = array_length_1d(output_array);

if(output_array[new_length - 1] != original_array[original_length - 1]) {
	output_array[new_length] = original_array[original_length - 1];
}

show_message(output_array)