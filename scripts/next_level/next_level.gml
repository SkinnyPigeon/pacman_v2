///@description next_level()

var enemy_array = [obj_hunter, obj_corners, obj_turner, obj_hoverer];

for(var i = 0; i < array_length_1d(enemy_array); i++) {
	//enemy_array[i].x = enemy_array[i].start_x;
	//enemy_array[i].y = enemy_array[i].start_y;
	enemy_array[i].new_game = true;
	enemy_array[i].moves = 0;
	enemy_array[i].hunt = true;
}

for (var i = 0; i < array_length_1d(obj_store.lives_array); i++) {
	obj_store.lives_array[i] = spr_player;
}

layer_destroy(global.pickup_spawn);
spawn_pickups();
obj_store.lives_count = 0;
obj_store.stagger_count = 0;
obj_player.dead = true;