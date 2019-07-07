// Set the position of the collapse object on the grid
gridPosX = x / obj_level.tileSize;
gridPosY = y / obj_level.tileSize;

// Change the color of the collapse sprite
if (alarm[0] <= collapseDuration / 2)
	color = c_red;
