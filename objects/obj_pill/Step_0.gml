if(instance_place(x, y, obj_player)) {
	instance_destroy()
	var enemy_array = [obj_hunter, obj_corners, obj_turner, obj_hoverer];

	for(var i = 0; i < array_length_1d(enemy_array); i++) {
		enemy_array[i].hunt = false
	}
}