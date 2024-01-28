/// @description Insert description here
// You can write your code in this editor

if(playing_game)
{
	//good
	if(global.laughter > 65)
	{
		if(music_state == 3)
			music_state = 3;
		else
			music_state = 5;
	}
	else if(global.laughter < 35)//bad
	{
		if(music_state == 2)
			music_state = 2;
		else
			music_state = 4;
	}
	else
	{
		if(music_state == 1)
			music_state = 1;
		else if(music_state == 2) //bad case
			music_state = 7;
		else if(music_state == 3) //good case
			music_state = 6;
	}
}


//next song
if(time_to_next_tick >= time_to_next)
{
	show_debug_message("KILL ME KILL ME KILL ME");
	switch(music_state)
	{
		case 0: //intro
			break;
		case 1: //neutral
			music_track = snd_mus_main_neut;
			time_to_next = 960;
			break;
		case 2: //bad
			music_track = snd_mus_main_bad;
			time_to_next = 960;
			break;
		case 3: //good
			music_track = snd_mus_main_good;
			time_to_next = 960;
			break;
		case 4: //neutral to bad
			music_track = snd_mus_neut_bad;
			time_to_next = 210;
			music_state = 2;
			break;
		case 5: //neutral to good
			music_track = snd_mus_neut_good;
			time_to_next = 210;
			music_state = 3;
			break;
		case 6: //good to neutral
			music_track = snd_mus_good_neut;
			time_to_next = 210;
			music_state = 1;
			break;
		case 7: //bad to neutral
			music_track = snd_mus_bad_neut;
			time_to_next = 210;
			music_state = 1;
			break;
		case 8: //lose
			music_track = snd_mus_lose;
			time_to_next = 945;
			music_state = 10; //stop
			break;
		case 9: //win
			music_track = snd_mus_win;
			time_to_next = 480;
			music_state = 10; //stop
			break;
		case 10: //no behavior, ignore
			music_track = noone;
			break;
	}
	audio_stop_sound(music_track);
	if(music_track != noone)
		audio_play_sound(music_track, 0, false, 1, 0);
	time_to_next_tick = 0;
}
time_to_next_tick++;

show_debug_message("TIMETONEXTTICK");
show_debug_message(time_to_next_tick);
show_debug_message("TIMETONEXT");
show_debug_message(time_to_next);
show_debug_message("STATE");
show_debug_message(music_state);



