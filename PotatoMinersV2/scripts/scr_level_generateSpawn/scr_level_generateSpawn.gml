// Generate a player spawn
var player = argument0;

var posX = gridPosX - 2;
var posY = gridPosY - 2;
var width = 5;
var height = 4;

scr_level_placeTileRect(posX, posY, width, height, 1, 2);

var coinVendor = instance_create_layer(posX * tileSize, posY * tileSize, "Items", obj_vendor_coin);
coinVendor.player = player;

var lanternVendor = instance_create_layer((posX + 1) * tileSize, posY * tileSize, "Items", obj_vendor_lantern);
lanternVendor.player = player;

var pickaxeVendor = instance_create_layer((posX + 2) * tileSize, posY * tileSize, "Items", obj_vendor_pickaxe);
pickaxeVendor.player = player;

var sightVendor = instance_create_layer((posX + 3) * tileSize, posY * tileSize, "Items", obj_vendor_sight);
sightVendor.player = player;

var supportVendor = instance_create_layer((posX + 4) * tileSize, posY * tileSize, "Items", obj_vendor_support);
supportVendor.player = player;

var lanternVendor = instance_create_layer((posX + 3) * tileSize, (posY + 2) * tileSize, "Items", obj_lantern);
lanternVendor.player = player;

var obj = instance_create_layer(x + tileSize / 2, y + tileSize / 2, "Entities", player);

if (instance_exists(obj_tutorial))
{
	instance_create_layer(x - (obj_level.tileSize * 2), y + obj_level.tileSize, "Items", obj_treasure);
	obj.tutorial = true;
}
