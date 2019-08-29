///@description scatter(enemy)
///@param enemy

var enemy = argument0;
if(instance_place(enemy.x, enemy.y, obj_player)) {
	switch(enemy.hunt) {
		case(true):
			stage_reset();
			break;
		case(false):
			score += 2000;
			enemy.x = 496;
			enemy.y = 400;
			enemy.dead = true;
			break;
	}
}

if(enemy.dead) {
	enemy.dead_timer -= 1;
}

if(enemy.dead_timer == 0) {
	enemy.dead = false;
	enemy.hunt = true;
	enemy.dead_timer = 3;
}