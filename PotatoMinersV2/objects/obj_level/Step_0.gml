// Loop through the grid horizontally
for (var xx = 0; xx < gridSize; xx++)
{
	// Loop through the grid vertically
	for (var yy = 0; yy < gridSize; yy++)	
	{
		// Place the tile on the tilemap based on the given tileID
		tilemap_set(tileMap, tileID[xx, yy], xx, yy);
	}
}
