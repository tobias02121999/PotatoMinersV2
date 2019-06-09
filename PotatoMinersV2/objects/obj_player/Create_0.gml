// Initialize the player variables
state = "DEFAULT";
inputScheme = 1;
movementSpeed = obj_level.tileSize;
movementCooldown = 8;
rotation = 0; // Rotation in degrees (facing direction)
gridPosX = 0;
gridPosY = 0;
coin = 0;
pickaxe = 1;
sight = 2;
lanterns = 0;
supports = 5;
stone = 0;
iron = 0;
gold = 0;
diamond = 0;
spawnX = x;
spawnY = y;

iCursorX = x;
iCursorY = y;

cursor = obj_cursor;

sensitivity = 1.5;

// Instantiate the spawn shield
instance_create_layer(x - (obj_level.tileSize / 2), (y - (obj_level.tileSize / 2)) - obj_level.tileSize, "System", obj_shield);
