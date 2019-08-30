///@description contact()

var enemy_array = [obj_hunter, obj_corners, obj_turner, obj_hoverer];

for (var i = 0; i < array_length_1d(enemy_array); i++) {
	if(instance_place(x, y, enemy_array[i])) {
		if(enemy_array[i].hunt) {
			stage_reset();
		} else if(!enemy_array[i].hunt) {
			enemy_reset(enemy_array[i]);
		}
	}
}