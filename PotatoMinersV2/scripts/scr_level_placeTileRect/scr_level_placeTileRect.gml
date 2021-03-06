// Fill a rectangle of specified size with tiles of a specified ID
var posX = argument0;
var posY = argument1;

var width = argument2;
var height = argument3;

var tileMin = argument4;
var tileMax = argument5;

var checkForIndestructibles = argument6;

for (var xx = posX; xx < posX + width; xx++)
{
	for (var yy = posY; yy < posY + height; yy++)
	{
		if ((xx >= gridStart && xx <= gridEnd) && (yy >= gridStart && yy <= gridEnd))
		{
			if (!checkForIndestructibles || (tileID[xx, yy] != 10))
				scr_level_placeTile(xx, yy, tileMin, tileMax);
		}
	}
}
