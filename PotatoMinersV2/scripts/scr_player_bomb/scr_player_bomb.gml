// Place a lantern on the player location
if (iBomb)
	instance_create_layer(obj_cursor.x + (obj_level.tileSize / 2), obj_cursor.y + (obj_level.tileSize / 2), "Items", obj_bomb);
