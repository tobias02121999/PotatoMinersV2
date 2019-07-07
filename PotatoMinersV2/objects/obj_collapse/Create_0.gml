// Initialize the collapse variables
gridPosX = x / obj_level.tileSize;
gridPosY = y / obj_level.tileSize;

collapseDuration = 600;
alarm[0] = collapseDuration;

color = c_yellow;

image_xscale = 2;
image_yscale = image_xscale;

if (instance_exists(obj_collapse))
	image_index = obj_collapse.image_index;
