// Generate a player spawn
var player = argument0;

while (!((gridPosX >= 4 && gridPosX <= gridSize - 4) && (gridPosY >= 4 && gridPosY <= gridSize - 4)))
{
	scr_level_randomizePos();
	scr_level_setGridPos();
}

var posX = gridPosX - 2;
var posY = gridPosY - 2;
var width = 3;
var height = 3;

scr_level_placeTileRect(posX, posY, width, height, 1, 2, false);

var coinVendor = instance_create_layer(posX * tileSize, posY * tileSize, "Items", obj_vendor_coin);
coinVendor.player = player;

var upgradesVendor = instance_create_layer((posX + 1) * tileSize, posY * tileSize, "Items", obj_vendor_upgrades);
upgradesVendor.player = player;

var itemsVendor = instance_create_layer((posX + 2) * tileSize, posY * tileSize, "Items", obj_vendor_items);
itemsVendor.player = player;

instance_create_layer((posX + 2) * tileSize, (posY + 2) * tileSize, "Items", obj_lantern);

var obj = instance_create_layer(x - tileSize / 2, y - tileSize / 2, "Entities", player);

if (instance_exists(obj_tutorial))
{
	instance_create_layer(x - (obj_level.tileSize * 2), y + obj_level.tileSize, "Items", obj_treasure);
	obj.tutorial = true;
}
