x = obj_bartender.x;
y = obj_bartender.y;

visible = false;

aiming = false;

angle_towards_target = 0;

target_set = false;

indicator_direction = 1;

target_customer = noone;

with (instance_create_layer(0, 0, "Instances", obj_throwable))  //use to check obj_throwable.locked
{
	visible = false;	
}