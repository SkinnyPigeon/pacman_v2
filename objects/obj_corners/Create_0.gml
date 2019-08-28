moves = 0;
previous_index = 0;
path_array = [[80, 80], [880, 144], [80, 704], [720, 944]]

var index = irandom(3);
var coords = path_array[index]

corner_path = path_add();
mp_grid_path(global.room_grid, corner_path, x, y, coords[0], coords[1], false);

path_start(corner_path, 8, path_action_stop, true);