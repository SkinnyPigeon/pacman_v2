if(obj_store.pickup_count == 200) {
	obj_store.difficulty += 1;
	obj_store.pickup_count = 0;
	next_level();
}