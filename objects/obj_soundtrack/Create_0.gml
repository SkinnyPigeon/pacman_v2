randomize();
audio_stop_all();

var song = irandom(3);
global.tracks = [PIN, Papal_Pasta, Sine, Seeders];

global.track_to_player = global.tracks[song];
audio_play_sound(global.track_to_player, 10, false);


