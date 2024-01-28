/// @description Insert description here
// You can write your code in this editor

//update mood of customer
if (mood_increasing && mood < mood_max_val) {
	show_debug_message("mood increasing");
	mood++;
} else if (!mood_increasing && mood > mood_min_val)  {
	show_debug_message("mood decreasing");
	mood--;
}

if (current_cup == "martini" && mood_increasing){
	alarm[2] = mood_increase_time_martini;
} else if (mood_increasing) {
	alarm[2] = mood_increase_time;
} else {
	alarm[2] = mood_decrease_time;
}