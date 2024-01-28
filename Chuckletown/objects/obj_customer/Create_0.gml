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
mood = 1;

//tracks the table the custoemr is assigned to
cust_table = noone;

//how much it increases per customer
inc_amount = 10;

//how often the laugh meter goes up
inc_rate = 60;
count_inc_rate = inc_rate;
//0 is heckler, 1-3 for music notes (how much they are making laugh meter go up)
drink_array = ["fat twink", "allen wrench", "lowball","beer","san penguino","boombox"];