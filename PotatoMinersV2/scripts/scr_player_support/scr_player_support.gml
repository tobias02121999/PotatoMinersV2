// Place a lantern on the player location
if (iSupport && cursor.inRange && supports >= 1 && !place_meeting(cursor.x, cursor.y, obj_support))
{
	instance_create_layer(cursor.x, cursor.y, "Items", obj_support);
	
	tutorialHasSupported = true;
	supports--;
}
