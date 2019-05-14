// Collapse the tile and destroy the collapse object
with (obj_level)
	scr_level_placeTile(other.gridPosX, other.gridPosY, 8, 8);

// Expand the collapsing area
if (obj_level.tileID[gridPosX - 1, gridPosY] <= 2 && !place_meeting(x - obj_level.tileSize, y, obj_collapse))
	instance_create_layer(x - obj_level.tileSize, y, "Items", obj_collapse);

if (obj_level.tileID[gridPosX + 1, gridPosY] <= 2 && !place_meeting(x + obj_level.tileSize, y, obj_collapse))
	instance_create_layer(x + obj_level.tileSize, y, "Items", obj_collapse);

if (obj_level.tileID[gridPosX, gridPosY - 1] <= 2 && !place_meeting(x, y - obj_level.tileSize, obj_collapse))
	instance_create_layer(x, y - obj_level.tileSize, "Items", obj_collapse);

if (obj_level.tileID[gridPosX, gridPosY + 1] <= 2 && !place_meeting(x, y + obj_level.tileSize, obj_collapse))
	instance_create_layer(x, y + obj_level.tileSize, "Items", obj_collapse);

instance_destroy();
