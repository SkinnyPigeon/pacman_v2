ready -= 1
if(ready == 0 && check_position(x, y)) {
	layer_sprite_create(global.selected_layer, x, y, spr_selected);
	obj_store.x_path[obj_store.i] = x;
	obj_store.y_path[obj_store.i] = y;
	obj_store.i++;
	obj_store.selection_is_good = 1;
}

if(obj_store.selection_is_good == 1) {
	layer_sprite_create(global.selected_layer, x, y, spr_selected);
	obj_store.x_path[obj_store.i] = x;
	obj_store.y_path[obj_store.i] = y;
	obj_store.i++;
}