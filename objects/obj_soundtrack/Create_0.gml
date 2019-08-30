randomize();
global.tracks = [PIN, Papal_Pasta, Sine, Seeders];
global.track_to_play = PIN;
if(!audio_is_playing(global.track_to_play)) {
	randomize();
	audio_stop_all();
	global.song = irandom(3);

	global.track_to_play = global.tracks[global.song];
	audio_play_sound(global.track_to_play, 10, false);
}