// Place a lantern on the player location
if (iBomb && bombs >= 1 && !place_meeting(cursor.x + 8, cursor.y + 8, obj_bomb) && obj_level.tileID[cursor.gridPosX, cursor.gridPosY] <= 3)
{
	instance_create_layer(cursor.x + (obj_level.tileSize / 2), cursor.y + (obj_level.tileSize / 2), "Items", obj_bomb);
	bombs--;
}
