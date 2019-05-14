// Place a lantern on the player location
if (iSupport && obj_cursor.inRange && supports >= 1 && !place_meeting(obj_cursor.x + 1, obj_cursor.y + 1, obj_support))
{
	instance_create_layer(obj_cursor.x, obj_cursor.y, "Items", obj_support);
	supports--;	
}
