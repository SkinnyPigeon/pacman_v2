///@description near_player(enemy_x, enemy_y)
///@param enemy_x
///@param enemy_y

var enemy_x = argument0;
var enemy_y = argument1;

var player_x = obj_player.x
var player_y = obj_player.y

for(var i = 2; i < 5; i++) {
	if(instance_position(player_x + (32 * i), player_y, obj_path)) {
		var destination_x = player_x + (32 * i)
	}
}