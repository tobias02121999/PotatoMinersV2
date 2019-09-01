// Initialize the level object
randomize();

tileWidth = 16;
tileHeight = 16;

levelWidth = room_width div tileWidth;
levelHeight = room_height div tileHeight;

borderSize = 1;

genState = "ORE";
       
caveAmount = 125;
oreAmount = 75;

oreChunkSize = 6;
caveSize = 25; 

currentOreTile = choose(5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 7, 7, 8);
 
x = round(random_range(borderSize, (levelWidth - borderSize) - 1)) * tileWidth;
y = round(random_range(borderSize, (levelHeight - borderSize) - 1)) * tileHeight;

tileLayer = layer_create(depth);
tileMap = layer_tilemap_create(tileLayer, 0, 0, ts_blocks_debug, levelWidth, levelHeight);

for (var xx = 0; xx < levelWidth; xx++) 
{
	for (var yy = 0; yy < levelHeight; yy++)
		tileID[xx, yy] = 4;
}
