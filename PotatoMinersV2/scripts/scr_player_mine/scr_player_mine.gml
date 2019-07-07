// Mine the block currently selected by the cursor (if possible)
if (iMine && cursor.inRange)
{
	if ((cursor.gridPosX >= obj_level.gridStart && cursor.gridPosX <= obj_level.gridEnd) &&
		(cursor.gridPosY >= obj_level.gridStart && cursor.gridPosY <= obj_level.gridEnd) &&
		obj_level.tileID[cursor.gridPosX, cursor.gridPosY] >= 4)
	{
		if (pickaxe >= obj_level.tileID[cursor.gridPosX, cursor.gridPosY] - 5 && obj_level.tileID[cursor.gridPosX, cursor.gridPosY] != 5)
		{
			switch (obj_level.tileID[cursor.gridPosX, cursor.gridPosY] - 4)
			{
				case 0: // Stone
					stone++;
					tutorialHasMined = true;
					break;
					
				case 2: // Coal
					coal++;
					break;
					
				case 3: // Iron
					iron++;
					break;
					
				case 4: // Gold
					gold++;
					break;
					
				case 5: // Diamond
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
			
			var collapse = instance_create_layer(posX, posY, "Items", obj_collapse);
			if (tutorial) collapse.alarm[0] = 0;
			
			audio_sound_pitch(snd_mine, random_range(.5, 1.25));
			audio_play_sound(snd_mine, 0, false);
			
			with (obj_level) scr_level_placeTile(other.cursor.gridPosX, other.cursor.gridPosY, 1, 2);
			
			pickaxeRotation = pickaxeRotationRange;
		}
	}
}
