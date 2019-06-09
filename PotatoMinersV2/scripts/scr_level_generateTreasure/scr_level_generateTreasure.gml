// Generate a treasure room
var posX = gridPosX - 2;
var posY = gridPosY - 2;
var width = 5;
var height = 5;

scr_level_placeTileRect(posX, posY + 1, 1, height - 2, 8, 8);
scr_level_placeTileRect(posX + (width - 1), posY + 1, 1, height - 2, 8, 8);

scr_level_placeTileRect(posX, posY, width, 1, 8, 8);
scr_level_placeTileRect(posX, posY + (height - 1), width, 1, 8, 8);

scr_level_placeTileRect(posX + 1, posY + 1, width - 2, height - 2, 1, 2);

instance_create_layer((posX + 2) * tileSize, (posY + 2) * tileSize, "Items", obj_treasure);
