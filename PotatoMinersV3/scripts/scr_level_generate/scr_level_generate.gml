// Generate the level

// Place a floor block
var xx = x div tileWidth;
var yy = y div tileHeight;

switch (genState)
{
	case "ORE":
		if (tileID[xx, yy] == 4)
		{
			oreAmount--; 
			tileID[xx, yy] = currentOreTile;
		}
		
		var rand = round(random_range(0, oreChunkSize));
		
		if (rand == 1)
		{
			x = round(random_range(borderSize, (levelWidth - borderSize) - 1)) * tileWidth;
			y = round(random_range(borderSize, (levelHeight - borderSize) - 1)) * tileHeight;
			currentOreTile = choose(5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 7, 7, 8);
		}
		
		if (oreAmount <= 0)
			genState = "CAVE";
		break;
	
	case "CAVE":
		var index = choose(1, 2); 
 
		if (tileID[xx, yy] > 2)
		{
			caveAmount--; 
			tileID[xx, yy] = index;
		}
		
		var rand = round(random_range(0, caveSize));
		
		if (rand == 1)
		{
			x = round(random_range(borderSize, (levelWidth - borderSize) - 1)) * tileWidth;
			y = round(random_range(borderSize, (levelHeight - borderSize) - 1)) * tileHeight;
		}
		
		if (caveAmount <= 0)
		{
			instance_create_layer(x + (tileWidth / 2), y + (tileHeight / 2), "Players", obj_player);
			genState = "FINISHED";
		}
		break;
		
	case "FINISHED":
		break;
} 

// Move
var oldX = x;
var oldY = y;

while (x == oldX && y == oldY)
{
	var dir = choose(0, 90, 180, 270);
	var lenX = lengthdir_x(tileWidth, dir);
	var lenY = lengthdir_y(tileHeight, dir); 
	var xx = (x + lenX) div tileWidth;
	var yy = (y + lenY) div tileHeight;
	
	if ((xx >= borderSize && xx < levelWidth - borderSize) && (yy >= borderSize && yy < levelHeight - borderSize))
	{
		x += lenX;
		y += lenY;
		
		break;
	}
}
