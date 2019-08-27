if(obj_store.selection_is_good == 1) {
	show_debug_message("X's: ")
	show_debug_message(obj_store.x_path)
	//x_path = dedupe_array(obj_store.x_path)
	//y_path = dedupe_array(obj_store.y_path)
	process_arrays(obj_store.x_path, obj_store.y_path)
}