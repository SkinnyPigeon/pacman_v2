///@description compare_coords(enemy_x, enemy_y)
///@param enemy_x
///@param enemy_y

var enemy_x = argument0;
var enemy_y = argument1;

var x_distance = point_distance(enemy_x, enemy_y, obj_player.x, enemy_y);
var y_distance = point_distance(enemy_x, enemy_y, enemy_x, obj_player.y);

var results = [x_distance, y_distance]

return results;