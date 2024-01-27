//if the table list has a free table, spawn a customer
if(customer_spawn_tick <= 0) {
	if(table_available())
	{
		alarm[0] = customer_spawn_rate;
		show_debug_message("called alarm0");
	}
	customer_spawn_tick = customer_spawn_rate;
}

//decrement spawner
customer_spawn_tick--;

show_debug_message("num customer = " + string(total_num_customers));

