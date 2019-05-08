// Mine the block currently selected by the cursor (if possible)
if (iMine && obj_cursor.inRange)
{
	if ((obj_cursor.gridPosX >= obj_level.gridStart && obj_cursor.gridPosX <= obj_level.gridEnd) &&
		(obj_cursor.gridPosY >= obj_level.gridStart && obj_cursor.gridPosY <= obj_level.gridEnd) &&
		obj_level.tileID[obj_cursor.gridPosX, obj_cursor.gridPosY] >= 3)
	{
		if (pickaxe >= obj_level.tileID[obj_cursor.gridPosX, obj_cursor.gridPosY] - 2)
		{
			switch (obj_level.tileID[obj_cursor.gridPosX, obj_cursor.gridPosY] - 3)
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
				var posX = (obj_cursor.x + (obj_level.tileSize / 2)) + random_range(-4, 4);
				var posY = (obj_cursor.y + (obj_level.tileSize / 2)) + random_range(-4, 4);
				
				instance_create_layer(posX, posY, "Particles", obj_particle_rock);
			}
			
			var posX = obj_cursor.gridPosX * obj_level.tileSize;
			var posY = obj_cursor.gridPosY * obj_level.tileSize;
			
			instance_create_layer(posX, posY, "Items", obj_collapse);
			
			obj_level.tileID[obj_cursor.gridPosX, obj_cursor.gridPosY] = round(random_range(1, 2));
		}
	}
}
