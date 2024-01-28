/// @description Insert description here
// You can write your code in this editor

tmr_crowd_interval--;

if (tmr_crowd_interval <= 0) {
	if(global.laughter < 30) {
		audio_play_sound(snd_boo, 1,false,1);
	} else if (global.laughter < 65) {
		audio_play_sound(snd_ha, 1,false,1);
	} else if (global.laughter >= 65) {
		audio_play_sound(snd_haha, 1,false,1);
	}
	tmr_crowd_interval = crowd_interval;
}
