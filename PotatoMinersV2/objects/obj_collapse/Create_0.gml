// Initialize the collapse variables
gridPosX = x / obj_level.tileSize;
gridPosY = y / obj_level.tileSize;
alarm[0] = 600;

if (instance_exists(obj_collapse))
	image_index = obj_collapse.image_index;
