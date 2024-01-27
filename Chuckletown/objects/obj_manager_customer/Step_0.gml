//if the table list has a free table, spawn a customer
if(ds_list_size(table_list) > 0 && customer_spawn_tick <= 0) {
	alarm[0] = customer_spawn_rate;
	show_debug_message("called alarm0");
	customer_spawn_tick = customer_spawn_rate;
}

customer_spawn_tick--;

show_debug_message("num customer = " + string(total_num_customers));
