// Place a lantern on the player location
if (iLantern && obj_cursor.inRange && lanterns >= 1 && !place_meeting(x, y, obj_lantern))
{
	instance_create_layer(obj_cursor.x, obj_cursor.y, "Items", obj_lantern);
	lanterns--;
}
