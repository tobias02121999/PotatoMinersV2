// Initialize the treasure variables
victoryScreenDuration = 100;
image_xscale = 2;
image_yscale = 2;

// Instantiate the spawn shield
instance_create_layer(x - (obj_level.tileSize / 2), (y - (obj_level.tileSize / 2)) - obj_level.tileSize, "System", obj_shield);
