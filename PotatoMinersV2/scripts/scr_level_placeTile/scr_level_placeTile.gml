// Place a tile
var posX = argument0;
var posY = argument1;
var tileMin = argument2;
var tileMax = argument3;

// Randomize the unique tile ID of the current tile
tileID[posX, posY] = round(random_range(tileMin, tileMax));
