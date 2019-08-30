///@description scatter(enemy)
///@param enemy

//var enemy = argument0;
//if(instance_place(enemy.x, enemy.y, obj_player)) {
//	switch(enemy.hunt) {
//		case(true):
//			stage_reset();
//			break;
//		case(false):
//			score += 2000;
//			enemy.x = 496;
//			enemy.y = 400;
//			enemy.dead = true;
//			break;
//	}
//}

//if(enemy.dead) {
//	enemy.dead_timer -= 1;
//}

//if(enemy.dead_timer == 0) {
//	enemy.dead = false;
//	enemy.hunt = true;
//	enemy.dead_timer = 3;
//}

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