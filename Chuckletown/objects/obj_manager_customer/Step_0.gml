//if the table list has a free table, spawn a customer

//create new customers if there is less than the maximum or number to be created
if(num_customers_to_create > 0 && total_num_customers < num_customers_max)
{
	if(table_available())
	{
		if(customer_spawn_tick >= irandom_range(45, 90))
		{
			//generate customer
			alarm[0] = 1;
			customer_spawn_tick = 0;
		}
		customer_spawn_tick++;
	}
	else
	{//to prevent overflow, reduce the number of customer create requests if no tables are available.
		num_customers_to_create--;
	}
}
//if(customer_spawn_tick <= 0) {
//	if(table_available())
//	{
//		alarm[0] = customer_spawn_rate;
//		//show_debug_message("called alarm0");
//	}
//	customer_spawn_tick = customer_spawn_rate;
//}

////decrement spawner
//customer_spawn_tick--;

//show_debug_message("num customer = " + string(total_num_customers));

