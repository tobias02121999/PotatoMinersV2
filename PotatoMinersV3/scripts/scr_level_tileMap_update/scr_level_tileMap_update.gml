// Update the tilemap
for (var xx = 0; xx < levelWidth; xx++)
{
	for (var yy = 0; yy < levelHeight; yy++)
		tilemap_set(tileMap, tileID[xx, yy], xx, yy);
}
