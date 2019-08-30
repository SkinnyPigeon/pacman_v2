///@description stage_reset()
obj_hunter.x = 432;
obj_hunter.y = 496;
obj_corners.x = 592;
obj_corners.y = 496;
obj_turner.x = 544;
obj_turner.y = 496;
obj_hoverer.x = 480;
obj_hoverer.y = 496;

obj_player.x = 176;
obj_player.y = 848;

enemy_array = [obj_hunter, obj_corners, obj_turner, obj_hoverer];

for(var i = 0; i < array_length_1d(enemy_array); i++) {
	enemy_array[i].moves = 0;
	enemy_array[i].hunt = true;
	enemy_array[i].dead = false;
	enemy_array[i].dead_timer = 3;
}

obj_store.lives_array[obj_store.lives_count] = spr_dead_player;
obj_store.lives_count++;
obj_store.stagger_count = 0;