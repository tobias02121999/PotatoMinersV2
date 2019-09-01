// Initialize the level variables
genStage = 0;

currentOreTile = choose(6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 8, 8, 9);
oreChunkSize = 5;

oreAmount = 3000;

tileSize = 16; // Size of a single tile in pixels
gridSize = round(room_width div tileSize); // The size of both the width and height of the grid

depth = 200; // Set the depth of the level tiles

tileLayer = layer_create(depth); // Create the tile layer
tileMap = layer_tilemap_create(tileLayer, 0, 0, ts_blocks, gridSize, gridSize); // Create the tilemap

gridStart = 1; // The cell where the playable grid starts (everything outside of the playable grid is wall)
gridEnd = gridSize - 2; // The cell where the playable grid ends

levelSize = 1250; // The amount of steps the level with take to generate

cavingChance = 25;
lavaChance = 250000000;

// Randomize the location of the level object
x = round(random_range(gridStart, gridEnd)) * tileSize;
y = round(random_range(gridStart, gridEnd)) * tileSize;

// The current position on the grid of the level object
gridPosX = 0;
gridPosY = 0;

// Loop through the grid horizontally
for (var xx = 0; xx < gridSize; xx++)
{
	// Loop through the grid vertically
	for (var yy = 0; yy < gridSize; yy++)	
	{
		// Initialize the unique tileID for the selected tile
		tileID[xx, yy] = 4; // Wall by default
	}
}

generationDuration = 1; // The duration of the generation process
alarm[0] = generationDuration; // Start the generation alarm

// Initialize the games font
global.Font = font_add_sprite_ext(spr_font, "0123456789abcdefghijklmnopqrstuvwxyz.", true, 2);
draw_set_font(global.Font);
 