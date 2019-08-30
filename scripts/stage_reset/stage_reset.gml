///@description stage_reset()
obj_player.x = obj_player.start_x;
obj_player.y = obj_player.start_y;

enemy_array = [obj_hunter, obj_corners, obj_turner, obj_hoverer];

for(var i = 0; i < array_length_1d(enemy_array); i++) {
	enemy_array[i].x = enemy_array[i].start_x;
	enemy_array[i].y = enemy_array[i].start_y;
	enemy_array[i].moves = 0;
	enemy_array[i].hunt = true;
	enemy_array[i].dead = false;
	enemy_array[i].dead_timer = 3;
}

obj_store.lives_array[obj_store.lives_count] = spr_dead_player;
obj_store.lives_count++;
obj_store.stagger_count = 0;