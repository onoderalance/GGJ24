//script to see if there is a free table
function table_available()
{
	//check every table for a valid table
	for(var i = 0; i < ds_list_size(table_list); i++)
	{
		if(!ds_list_find_value(table_list, i).occupied)
			return true;
	}
	//did not find an unoccupied trable
	return false;
}

//tracks total number of customers
total_num_customers = 0;

//stores the mp grid for customer movement
//generate grid of the room
global.grid = mp_grid_create(0, 0, room_width / 16, room_height / 16, 16, 16);

//add obstacles to the grid
mp_grid_add_instances(global.grid, obj_table, false);
mp_grid_add_instances(global.grid, obj_collision, false);

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

