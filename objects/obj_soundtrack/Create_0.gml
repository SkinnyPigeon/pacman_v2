randomize();

global.song = irandom(3);
global.tracks = [PIN, Papal_Pasta, Sine, Seeders];

global.track_to_play = global.tracks[global.song];
audio_play_sound(global.track_to_play, 10, false);


