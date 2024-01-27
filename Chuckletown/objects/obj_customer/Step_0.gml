count_inc_rate--;
if (instance_exists(self) && count_inc_rate <= 0) {
	alarm[0] = inc_rate;
	count_inc_rate = inc_rate;
}