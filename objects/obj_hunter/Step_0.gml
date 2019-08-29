if(hunt && moves > 0 && !dead) {
	dead = false;
	moves -= 1
	var hunter_path = path_add();
	mp_grid_path(global.room_grid, hunter_path, x, y, obj_player.x, obj_player.y, false);
	path_start(hunter_path, 16, path_action_stop, true);	
} else if(!hunt && moves > 0 && !dead) {
	moves -= 1;
	scatter(self, "top_right");
} else {
	path_end()
}

contact(self);

//if(instance_place(x, y, obj_player)) {
//	switch(hunt) {
//		case(true):
//			show_debug_message("DEAD")
//			break;
//		case(false):
//			score += 2000;
//			x = 464;
//			y = 400;
//			dead = true;
//			break;
//	}
//}

//if(dead) {
//	dead_timer -= 1;
//}

//if(dead_timer == 0) {
//	dead = false;
//	hunt = true;
//	dead_timer = 3;
//}