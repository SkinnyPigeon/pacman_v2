//contact(self);
if(hunt && moves > 0 && !dead && obj_store.stagger_count > 0) {
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

//contact(self);

if(!hunt) {
	sprite_index = spr_hunter_hunted;
} else {
	sprite_index = spr_hunter;
}