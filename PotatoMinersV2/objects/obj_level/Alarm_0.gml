// The generation alarm

// 
switch (genStage)
{
	// The first stage of generation (ores)
	case 0:
		// Move the level object
		scr_level_move();

		// Set the current position on the grid of the level object
		scr_level_setGridPos();
		
		// Place a tile
		scr_level_placeTile(gridPosX, gridPosY, currentOreTile, currentOreTile); // Floor tiles
		
		var rand = round(random_range(0, oreChunkSize));
		if (rand == 0)
		{
			// Randomize the location of the level object
			scr_level_randomizePos();
		
			// Set the current position on the grid of the level object
			scr_level_setGridPos();
			
			currentOreTile = choose(5, 5, 5, 6, 6, 7);
		
			// Randomize the unique tile ID of the current tile
			scr_level_placeTile(gridPosX, gridPosY, currentOreTile, currentOreTile); // Floor tiles
		}
		
		oreAmount--; // Reduce the current ore amount

		// Check if another generation step should be ran
		if (oreAmount >= 1)
			alarm[0] = generationDuration; // Reset the generation alarm
		else
		{
			alarm[0] = generationDuration; // Reset the generation alarm
			genStage = 1;
		}
		break;
		
	// The second stage of generation (caves)
	case 1:
		// Move the level object
		scr_level_move();

		// Set the current position on the grid of the level object
		scr_level_setGridPos();

		// Place a tile
		scr_level_placeTile(gridPosX, gridPosY, 1, 2); // Floor tiles

		var rand = round(random_range(0, cavingChance));
		if (rand == 0)
		{
			// Randomize the location of the level object
			scr_level_randomizePos();
		
			// Set the current position on the grid of the level object
			scr_level_setGridPos();
		
			// Randomize the unique tile ID of the current tile
			scr_level_placeTile(gridPosX, gridPosY, 1, 2); // Floor tiles
		}
		
		levelSize--; // Reduce the current level size

		// Check if another generation step should be ran
		if (levelSize >= 1)
			alarm[0] = generationDuration; // Reset the generation alarm
		else
		{
			var posX = gridPosX - 2;
			var posY = gridPosY - 2;
			var width = 5;
			var height = 4;
			
			scr_level_placeTileRect(posX, posY, width, height, 1, 2);
			
			instance_create_layer(posX * tileSize, posY * tileSize, "Items", obj_vendor_coin);
			instance_create_layer((posX + 1) * tileSize, posY * tileSize, "Items", obj_vendor_lantern);
			instance_create_layer((posX + 2) * tileSize, posY * tileSize, "Items", obj_vendor_pickaxe);
			instance_create_layer((posX + 3) * tileSize, posY * tileSize, "Items", obj_vendor_sight);
			instance_create_layer((posX + 4) * tileSize, posY * tileSize, "Items", obj_vendor_support);
			
			instance_create_layer((posX + 3) * tileSize, (posY + 2) * tileSize, "Items", obj_lantern);
			
			instance_create_layer(x + tileSize / 2, y + tileSize / 2, "Entities", obj_player);
		}
		break;
}
