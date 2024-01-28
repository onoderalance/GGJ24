/// @description Insert description here
// You can write your code in this editor
//next song
if(time_to_next_tick >= time_to_next)
{
	audio_play_sound(music_track, 0, false);
	switch(music_state)
	{
		case 0: //intro
			break;
		case 1: //neutral
			break;
		case 2: //bad
			break;
		case 3: //good
			break;
		case 4: //neutral to bad
			break;
		case 5: //neutral to good
			break;
		case 6: //good to neutral
			break;
		case 7: //bad to neutral
			break;
		case 8: //lose
			break;
		case 9: //win
			break;
	}
	time_to_next_tick = 0;
}
time_to_next_tick++;



