
var myID;
//for each instance of customer
for (myID = 0; myID <obj_manager_customer.total_num_customers; myID++){
	IDCheck = instance_find(obj_customer, myID);
	//if you are on the current instance
	if(id == IDCheck) {
		//increase global laughter
		global.laughter = global.laughter + (mood * inc_amount);
		//show_debug_message("increasing current");
		break;
	}	
}

//global.laughter = global.laughter + (mood * inc_amount);
