// Explode
with (obj_level)
	scr_level_placeTileRect(other.gridPosX - other.range, other.gridPosY - other.range, (other.range * 2) + 1, (other.range * 2) + 1, 1, 2);

instance_destroy();
