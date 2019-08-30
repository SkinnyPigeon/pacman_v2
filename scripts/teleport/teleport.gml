///@description teleport()

var obj_array = [obj_player, obj_hunter, obj_corners, obj_turner, obj_hoverer];

for (var i = 0; i < array_length_1d(obj_array); i++) {
	if(instance_position(x, y, obj_array[i])) {
		obj_array[i].ready_to_teleport = 1;
	}
	if(obj_array[i].ready_to_teleport == 1) {
		if(x == 112 && obj_array[i].x == 112) {
			obj_array[i].x = 880;
			obj_array[i].ready_to_teleport = 0;
		} else if (x == 912 && obj_array[i].x == 912) {
			obj_array[i].x = 144;
			obj_array[i].ready_to_teleport = 0;
		}
	}
}