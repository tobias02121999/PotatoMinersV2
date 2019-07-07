// The generation alarm

//
repeat (10)
{
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
			
				currentOreTile = choose(6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 8, 8, 9);
		
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

			var caving = round(random_range(0, cavingChance));
			if (caving == 0)
			{
				// Randomize the location of the level object
				scr_level_randomizePos();
		
				// Set the current position on the grid of the level object
				scr_level_setGridPos();
		
				// Randomize the unique tile ID of the current tile
				scr_level_placeTile(gridPosX, gridPosY, 1, 2); // Floor tiles
			}
		
			var lava = round(random_range(0, lavaChance));
			if (lava == 0)
				instance_create_layer(x, y, "Items", obj_lava);
		
			levelSize--; // Reduce the current level size
			break;
	}
}

// Check if another generation step should be ran
if (levelSize >= 1)
	alarm[0] = generationDuration; // Reset the generation alarm
else
{
	scr_level_generateSpawn(obj_player_0); // Generate the first enemy spawn
	
	scr_level_randomizePos();
	scr_level_setGridPos();
	
	scr_level_generateSpawn(obj_player_1); // Generate the second enemy spawn
	
	scr_level_randomizePos();
	scr_level_setGridPos();
	
	if (!instance_exists(obj_tutorial)) scr_level_generateTreasure();
}
