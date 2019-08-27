ready -= 1
if(ready == 0 && check_position(x, y, obj_player.x, obj_player.y)) {
	layer_sprite_create(global.selected_layer, x, y, spr_selected);
	obj_store.previous_x = x;
	obj_store.previous_y = y;
	obj_store.selection_is_good = 1;
	obj_store.x_path[obj_store.i] = x;
	obj_store.y_path[obj_store.i] = y;
	obj_store.i++;
}

if(obj_store.selection_is_good == 1 && check_position(x, y, obj_store.previous_x, obj_store.previous_y)) {
	layer_sprite_create(global.selected_layer, x, y, spr_selected);
	obj_store.previous_x = x;
	obj_store.previous_y = y;
	obj_store.x_path[obj_store.i] = x;
	obj_store.y_path[obj_store.i] = y;
	obj_store.i++;
} 