// Place a tile
var posX = argument0;
var posY = argument1;

var tileMin = argument2;
var tileMax = argument3;

// Randomize the unique tile ID of the current tile
tileID[posX, posY] = round(random_range(tileMin, tileMax));

// Remove the wall edge if needed
if (posY + 1 < gridSize)
{
	if (tileID[posX, posY + 1] <= 3)
		tileID[posX, posY + 1] = round(random_range(1, 2));
}
