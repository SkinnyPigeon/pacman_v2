///@description dedupe_array(input_x, input_y)
///@param input_x
///@param input_y

var input_x = argument0;
var input_y = argument1;

var input_length = array_length_1d(input_x);

var output_x = [];
var output_y = [];

var j = 0;

for(var i = 0; i < input_length - 1; i++) {
	var first_array = [input_x[i], input_y[i]];
	var second_array = [input_x[i + 1], input_y[i + 1]];
	
	if(first_array[0] != second_array[0] || first_array[1] != second_array[1]) {
		output_x[j] = input_x[i];
		output_y[j] = input_y[i];
		j++;
	}
}

var output_length = array_length_1d(output_x);

if(output_x[output_length - 1] != input_x[input_length - 1] 
|| output_y[output_length - 1] != input_y[input_length - 1]) {
	output_x[output_length] = input_x[input_length - 1];
	output_y[output_length] = input_y[input_length - 1];
}

return [output_x output_y]