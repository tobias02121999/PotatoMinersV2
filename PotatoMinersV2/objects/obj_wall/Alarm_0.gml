// Collapse the tile and destroy the collapse object
with (obj_level)
	scr_level_placeTile(other.gridPosX, other.gridPosY, 4, 4);

instance_destroy();
