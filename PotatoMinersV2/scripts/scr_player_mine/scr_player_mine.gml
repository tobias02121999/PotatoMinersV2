// Mine the block currently selected by the cursor (if possible)
if (iMine && cursor.inRange)
{
	if ((cursor.gridPosX >= obj_level.gridStart && cursor.gridPosX <= obj_level.gridEnd) &&
		(cursor.gridPosY >= obj_level.gridStart && cursor.gridPosY <= obj_level.gridEnd) &&
		obj_level.tileID[cursor.gridPosX, cursor.gridPosY] >= 3)
	{
		if (pickaxe >= obj_level.tileID[cursor.gridPosX, cursor.gridPosY] - 3 && obj_level.tileID[cursor.gridPosX, cursor.gridPosY] != 4)
		{
			switch (obj_level.tileID[cursor.gridPosX, cursor.gridPosY] - 3)
			{
				case 0: // Stone
					stone++;
					break;
					
				case 2: // Iron
					iron++;
					break;
					
				case 3: // Gold
					gold++;
					break;
					
				case 4: // Diamond
					diamond++;
					break;
			}
			
			repeat (10)
			{
				var posX = (cursor.x + (obj_level.tileSize / 2)) + random_range(-4, 4);
				var posY = (cursor.y + (obj_level.tileSize / 2)) + random_range(-4, 4);
				
				instance_create_layer(posX, posY, "Particles", obj_particle_rock);
			}
			
			var posX = cursor.gridPosX * obj_level.tileSize;
			var posY = cursor.gridPosY * obj_level.tileSize;
			
			instance_create_layer(posX, posY, "Items", obj_collapse);
			
			obj_level.tileID[cursor.gridPosX, cursor.gridPosY] = round(random_range(1, 2));
		}
	}
}
