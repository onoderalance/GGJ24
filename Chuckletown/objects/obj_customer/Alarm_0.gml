var myID;
for (myID = 0; myID <obj_manager_customer.total_num_customers; myID++){
	IDCheck = instance_find(obj_customer, myID);
	if(id == IDCheck) {
		global.laughter = global.laughter + (mood * inc_amount);
		show_debug_message("increasing current");
		break;
	}	
}
