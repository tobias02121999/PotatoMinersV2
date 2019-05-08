// Collapse the tile and destroy the collapse object
with (obj_level)
	scr_level_placeTile(other.gridPosX, other.gridPosY, 8, 8);

instance_destroy();
