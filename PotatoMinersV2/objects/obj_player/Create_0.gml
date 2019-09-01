// Initialize the player variables
state = "DEFAULT";
inputScheme = 1;
movementSpeed = obj_level.tileSize;
movementCooldown = 10;
rotation = 0; // Rotation in degrees (facing direction)
gridPosX = 0;
gridPosY = 0;

playerID = 0;

coin = 0;
pickaxe = 1;
sight = 2;
lanterns = 0;
supports = 5;
bombs = 0;

stone = 0;
coal = 0;
iron = 0;
gold = 0;
diamond = 0;

spawnX = x;
spawnY = y;

iCursorX = x;
iCursorY = y;

cursor = obj_cursor;

sensitivity = 3;

walkRotationIntensity = 25;
walkRotationResetSpeed = 2.5;
walkRotationDirection = 1;

moveTargetX = x;
moveTargetY = y;
moveTargetSpeed = 2;

pickaxeRotation = 0;
pickaxeRotationSpeed = 10;
pickaxeRotationRange = 75;

miningCompletion = 0;
miningSpeedStone = .065;
miningSpeedCoal = .035;
miningSpeedIron = .02;
miningSpeedGold = .01;
miningSpeedDiamond = .005;

spriteBody = spr_potato_body_0;
spriteEyes = choose(spr_potato_eyes_0, spr_potato_eyes_1, spr_potato_eyes_2, spr_potato_eyes_3);
spriteNose = choose(spr_potato_nose_0, spr_potato_nose_1, spr_potato_nose_2);
spriteHair = choose(spr_potato_hair_0, spr_potato_hair_1, spr_potato_hair_2);

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

alarm[1] = 500;

// Instantiate the spawn shield
instance_create_layer(x - (obj_level.tileSize / 2), (y - (obj_level.tileSize / 2)) - obj_level.tileSize, "System", obj_shield);
