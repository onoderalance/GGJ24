/// @description Insert description here
// You can write your code in this editor

playing_game = true; 

//art inon intro track
music_track = snd_mus_intro;

//which track to play next will go to neutral
music_state = 1;

audio_play_sound(music_track, 0, false);

//time to next song
time_to_next = 120;

time_to_next_tick = 0;




