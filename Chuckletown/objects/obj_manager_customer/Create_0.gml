total_num_customers = 0;

//position that it moves from (bottom right currently)
initial_x = room_width;
initial_y = room_height;

//list of all table instances
table_list = ds_list_create();

//frequency of customeer spawns
customer_spawn_rate = 60;
customer_spawn_tick = customer_spawn_rate;

//adds all tables to list
for (var i = 0; i < instance_number(obj_table); i++;)
{
	ds_list_add(table_list, instance_find(obj_table,i));
}

////removes occupied tables from list
//for (var i = 0; i < ds_list_size(table_list); ++i;) {
//	if (ds_list_find_value(table_list, i).occupied == true) {
//		ds_list_delete(table_list, i)
//		i--;
//	}
//}