// Expand the collapsing area
if (obj_level.tileID[gridPosX - 1, gridPosY] <= 2 && !place_meeting(x - obj_level.tileSize, y, obj_lava))
	instance_create_layer(x - obj_level.tileSize, y, "Items", obj_lava);

if (obj_level.tileID[gridPosX + 1, gridPosY] <= 2 && !place_meeting(x + obj_level.tileSize, y, obj_lava))
	instance_create_layer(x + obj_level.tileSize, y, "Items", obj_lava);

if (obj_level.tileID[gridPosX, gridPosY - 1] <= 2 && !place_meeting(x, y - obj_level.tileSize, obj_lava))
	instance_create_layer(x, y - obj_level.tileSize, "Items", obj_lava);

if (obj_level.tileID[gridPosX, gridPosY + 1] <= 2 && !place_meeting(x, y + obj_level.tileSize, obj_lava))
	instance_create_layer(x, y + obj_level.tileSize, "Items", obj_lava);

alarm[0] = 30;
