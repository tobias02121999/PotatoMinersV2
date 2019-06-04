// Place a lantern on the player location
if (iBomb)
	instance_create_layer(cursor.x + (obj_level.tileSize / 2), cursor.y + (obj_level.tileSize / 2), "Items", obj_bomb);
