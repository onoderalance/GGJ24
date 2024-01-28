//default depth
depth = 0;

switch(state)
{
	case CUSTOMER_STATE.ENTERING:
		if(x == target_table.x+16 && y == target_table.y) //if they are at the table
		{	
			//set the table to what it is
			cust_table = target_table;
			alarm[2] = mood_change_time;
			//generate random mood
			var _mood_odds = irandom_range(0,9);
			switch(_mood_odds)
			{
				case 0:
				case 1:
				case 2:
				case 3:
				case 4:
				case 5:
					mood = 0; //neutral mood ivery likjely
					break;
				case 6:
				case 7:
				case 8:
					mood = 1; //normal happy
					break;
				case 9:
					mood = -1; //mad af
					break;
			}
			state = CUSTOMER_STATE.WANTS_DRINK;
			
		}
		break;
	case CUSTOMER_STATE.WANTS_DRINK:
		//mood will deecrease
		mood_increasing = false;
		//if no drink preference, give it one
		if (drink_pref == "") {
			drink_pref = drink_array[irandom(5)];
			show_debug_message("I want " + drink_pref);
		}
		current_state = check_current_state();
		
		break;
	case CUSTOMER_STATE.SATIATED:
		//mood will increase
		mood_increasing = true;
		//ensure cup n stuff is drawn atop the table
		depth = -1;
		
		drink_pref = "";
		current_state = check_current_state();
		
		break;
	case CUSTOMER_STATE.HECKLER:
		break;
}

//timer countdown to next laugh meter change
count_inc_rate--;
//increase the laugh meter
if (count_inc_rate <= 0) {
	alarm[0] = inc_rate;
	count_inc_rate = inc_rate;
}

//global.laughter += mood * inc_amount;