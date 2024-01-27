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
_new_customer.target_table = _chosen_table;


with(_new_customer)
{
	state = CUSTOMER_STATE.ENTERING;
	//path_delete(m_path);
	m_path = path_add();
	var _target_x = target_table.x + 16;
	var _target_y = target_table.y;
	var _start_x = x-16;
	var _start_y = y-16;
	if(mp_grid_path(global.grid, m_path, _start_x, _start_y, _target_x, _target_y, true))
		show_debug_message("done");
	show_debug_message("Start Pos: " + string(x) + " - " + string(y));
	show_debug_message("End Pos: " + string(_target_x) + " - " + string(_target_y));
	path_start(m_path, 10, path_action_stop, true);
	show_debug_message("kms");
}

_chosen_table.occupied = true;

//increase total number of customers
total_num_customers++;
show_debug_message(total_num_customers);
