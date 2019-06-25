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

walkRotationIntensity = 25;
walkRotationResetSpeed = 2.5;
walkRotationDirection = 1;

moveTargetX = x;
moveTargetY = y;
moveTargetSpeed = 1;

tutorial = false;
tutorialStage = 0;

tutorialHasMoved = false;
tutorialHasMined = false;
tutorialHasSupported = false;
tutorialHasBuilt = false;
tutorialHasSold = false;
tutorialHasBought = false;
tutorialHasLanterned = false;
tutorialHasCheated = false;
tutorialHasTreasured = false;

image_xscale = .5;
image_yscale = .5;

alarm[1] = 500;

// Instantiate the spawn shield
instance_create_layer(x - (obj_level.tileSize / 2), (y - (obj_level.tileSize / 2)) - obj_level.tileSize, "System", obj_shield);
