show_debug_message("pre-spawning");

with (instance_create_layer(initial_x, initial_y, "Instances", obj_customer)) {
	show_debug_message("spawning");
	var chosen_table = obj_manager_customer.table_list[|random_range(0, ds_list_size(obj_manager_customer.table_list)-1)];
	x = chosen_table.x;
	y = chosen_table.y;			
	chosen_table.occupied = true;
}
ds_list_delete(table_list,ds_list_find_index(table_list, chosen_table))
alarm[0] = spawn_rate;
if ds_list_size(table_list) <= 0 {
    alarm[0] = -1; //max_enemies_per_wave_ is equal to 3
}
total_num_customers++;
show_debug_message(total_num_customers)

