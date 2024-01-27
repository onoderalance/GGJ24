/// @description alarm called for spawning a customer
show_debug_message("pre-spawning");

//create an instance of customer
var _chosen_table = obj_manager_customer.table_list[|irandom_range(0, ds_list_size(obj_manager_customer.table_list)-1)];	
while(_chosen_table.occupied)
{
	//pick a new random table
	_chosen_table = obj_manager_customer.table_list[|irandom_range(0, ds_list_size(obj_manager_customer.table_list)-1)];	
}
//create new customer on selected table
show_debug_message("spawning");
var _new_customer = instance_create_layer(initial_x, initial_y, "Instances", obj_customer);
_new_customer.x = _chosen_table.x;
_new_customer.y = _chosen_table.y;
_chosen_table.occupied = true;

//increase total number of customers
total_num_customers++;
show_debug_message(total_num_customers);
