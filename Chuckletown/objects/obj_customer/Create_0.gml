enum CUSTOMER_STATE {
	ENTERING,
	WANTS_DRINK,
	SATIATED,
	HECKLER,
}

state = CUSTOMER_STATE.ENTERING;

target_table = noone;

//m_path = path_add();

target = false;

cust_name = "";
drink_pref = "";
mood = 1;

//how much it increases per customer
inc_amount = 10;

//how often the laugh meter goes up
inc_rate = 60;
count_inc_rate = inc_rate;
//0 is heckler, 1-3 for music notes (how much they are making laugh meter go up)