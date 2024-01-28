/// @description Insert description here
// You can write your code in this editor

//update mood of customer
if (mood_increasing && mood <= mood_max_val) {
	show_debug_message("mood increasing");
	mood++;
} else if (!mood_increasing && mood >= mood_min_val)  {
	show_debug_message("mood decreasing");
	mood--;
}

alarm[2] = mood_change_time;