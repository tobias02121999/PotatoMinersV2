// Set the position of the collapse object on the grid
gridPosX = x / obj_level.tileSize;
gridPosY = y / obj_level.tileSize;

// Destroy collapses
if (place_meeting(x, y, obj_collapse))
	with (other) instance_destroy();
