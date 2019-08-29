globalvar room_grid;
room_grid = mp_grid_create(0, 0, room_width / 32, room_height / 32, 32, 32);
mp_grid_add_instances(room_grid, obj_wall, false);
