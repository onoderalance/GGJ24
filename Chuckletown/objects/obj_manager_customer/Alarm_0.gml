show_debug_message("pre-spawning");

//create an instance of customer
with(instance_create_layer(initial_x, initial_y, "Instances", obj_customer)) {
	show_debug_message("spawning");
	//choose an empty table
	var chosen_table = obj_manager_customer.table_list[|random_range(0, ds_list_size(obj_manager_customer.table_list)-1)];	
	//move to that table
	x = chosen_table.x;
	y = chosen_table.y;
	//make that table occupied (maybe redundent idk)
	chosen_table.occupied = true;
}
//remove occupied table from list
ds_list_delete(table_list, ds_list_find_index(table_list, chosen_table))

//repeat
alarm[0] = customer_spawn_rate;
//if no more empty tables, don't spawn any more
if ds_list_size(table_list) <= 0 {
	alarm[0] = -1;
}
//increase total number of customers
total_num_customers++;
show_debug_message(total_num_customers);