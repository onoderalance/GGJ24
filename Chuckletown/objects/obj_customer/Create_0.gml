enum CUSTOMER_STATE {
	ENTERING,
	WANTS_DRINK,
	SATIATED,
	HECKLER,
}

state = CUSTOMER_STATE.ENTERING;

target_table = noone;

//m_path = path_add();

//tracks if this is the currently targeted customer
target = false;

//customer parameters
cust_name = "";
drink_pref = "";
drink_time = 800;

//tracks the table the custoemr is assigned to
cust_table = noone;

//how much it increases per customer
inc_amount = 0.2;

//how often the laugh meter goes up
inc_rate = 60;
count_inc_rate = inc_rate;
//0 is heckler, 1-3 for music notes (how much they are making laugh meter go up)
drink_array = ["fat twink", "allen wrench", "lowball","beer","san penguino","boom box"];

//an instance of obj_drink that is on the table
currrent_drink = "";
current_cup = "";

//set mood to 0 by default and have max and min values
mood = 0;
mood_max_val = 2;
mood_min_val = -1;
mood_increasing = false;
//how often to change mood
mood_decrease_time = 600;
mood_increase_time = 400;
mood_increase_time_martini = 250;

particle = noone;

current_state = "neutral" //"happy", "satisfied", "netural", "unhappy"

//smiley face logic
function check_current_state() {
	if (mood >= 3) {
		current_state = "happy";
	} else if (mood >= 1) {
		current_state = "satisfied";
	} else if (mood >= -1) {
		current_state = "neutral";
	} else {
		current_state = "unhappy"
	}
}