if(obj_store.selection_is_good == 1) {
	processed_arrays = process_arrays(obj_store.x_path, obj_store.y_path)
	player_path(processed_arrays)
	layer_destroy(global.selected_layer);
}