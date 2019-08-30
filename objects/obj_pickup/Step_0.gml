if(instance_place(x, y, obj_player)) {
	score += 1000;
	instance_destroy()
	obj_store.pickup_count += 1;
}