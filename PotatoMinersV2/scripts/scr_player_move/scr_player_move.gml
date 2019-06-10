// Move the player around
if (alarm[0] <= 0)
{
	if (iMoveLeft)
	{
		var newGridPosX = (x / obj_level.tileSize) - 1;
		var newGridPosY = y / obj_level.tileSize;
			
		if (obj_level.tileID[newGridPosX, newGridPosY] <= 2)
		{
			moveTargetX -= movementSpeed;
			
			if (inputScheme == 2)
				iCursorX -= movementSpeed;
		}
	}
		
	if (iMoveRight)
	{
		var newGridPosX = (x / obj_level.tileSize) + 1;
		var newGridPosY = y / obj_level.tileSize;
			
		if (obj_level.tileID[newGridPosX, newGridPosY] <= 2)
		{
			moveTargetX += movementSpeed;
			
			if (inputScheme == 2)
				iCursorX += movementSpeed;
		}
	}
		
	if (iMoveUp)
	{
		var newGridPosX = x / obj_level.tileSize;
		var newGridPosY = (y / obj_level.tileSize) - 1;
			
		if (obj_level.tileID[newGridPosX, newGridPosY] <= 2)
		{
			moveTargetY -= movementSpeed;
			
			if (inputScheme == 2)
				iCursorY -= movementSpeed;
		}
	}
		
	if (iMoveDown)
	{
		var newGridPosX = x / obj_level.tileSize;
		var newGridPosY = (y / obj_level.tileSize) + 1;
			
		if (obj_level.tileID[newGridPosX, newGridPosY] <= 2)
		{
			moveTargetY += movementSpeed;
			
			if (inputScheme == 2)
				iCursorY += movementSpeed;
		}
	}
			
	if (iMoveLeft || iMoveRight || iMoveUp || iMoveDown)
	{
		repeat (10)
		{
			var posX = xprevious + random_range(-4, 4);
			var posY = yprevious + random_range(-4, 4);
					
			instance_create_layer(posX, posY, "Particles", obj_particle_dust);
		}
		
		image_angle = walkRotationIntensity * walkRotationDirection;
		walkRotationDirection *= -1;
		
		tutorialHasMoved = true;
				
		alarm[0] = movementCooldown;
	}
}
