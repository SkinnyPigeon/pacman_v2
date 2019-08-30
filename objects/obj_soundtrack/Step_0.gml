var length = array_length_1d(global.tracks);
var none_playing = 0;
for(var i = 0; i < length; i++) {
	if(!audio_is_playing(global.tracks[i])) {
		none_playing += 1;
	}
}



if(none_playing == length) {
	randomize();
	var song = irandom(3);
	global.track_to_player = global.tracks[song];
	audio_play_sound(global.track_to_player, 10, false);
	none_playing = 0;
}
