ai_path = path_add();
mp_grid_path(global.room_grid, ai_path, x, y, obj_player.x, obj_player.y, false)
path_start(ai_path, 3, path_action_stop, true)