///@description near_player()

var player_x = obj_player.x
var player_y = obj_player.y

var destination_x = 0;
var destination_y = 0;

var true_array = [];
var j = 0;

for(var i = 2; i < 5; i++) {
	if(instance_position(player_x + (32 * i), player_y, obj_path)) {
		destination_x = player_x + (32 * i);
		destination_y = player_y;
		true_array[j] = [destination_x, destination_y];
		j++;
	} else if (instance_position(player_x - (32 * i), player_y, obj_path)) {
		destination_x = player_x - (32 * i);
		destination_y = player_y;
		true_array[j] = [destination_x, destination_y];
		j++;
	} else if (instance_position(player_x, player_y + (32 * i), obj_path)) {
		destination_x = player_x;
		destination_y = player_y + (32 * i);
		true_array[j] = [destination_x, destination_y];
		j++;
	} else if (instance_position(player_x, player_y - (32 * i), obj_path)) {
		destination_x = player_x;
		destination_y = player_y - (32 * i);
		true_array[j] = [destination_x, destination_y];
		j++;
	}
}

var length = array_length_1d(true_array);
var index = irandom(length - 1);
var results = true_array[index]

return results