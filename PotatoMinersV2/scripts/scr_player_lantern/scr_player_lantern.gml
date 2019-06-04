// Place a lantern on the cursor location
if (iLantern && cursor.inRange && lanterns >= 1 && !place_meeting(x, y, obj_lantern))
{
	instance_create_layer(cursor.x, cursor.y, "Items", obj_lantern);
	lanterns--;
}
