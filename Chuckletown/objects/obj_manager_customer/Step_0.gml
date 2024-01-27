count_spawn_rate--;
if(ds_list_size(table_list) > 0 && count_spawn_rate <= 0) {
	alarm[0] = spawn_rate;
	show_debug_message("called alarm0");
	count_spawn_rate = spawn_rate;
}

show_debug_message("num customer = " + string(total_num_customers));
