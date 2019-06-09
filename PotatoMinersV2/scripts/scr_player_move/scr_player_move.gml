// Move the player around
switch (inputScheme)
{
	// The original (classic) input scheme
	case 0:
		if (iMove)
		{
			var lenX = lengthdir_x(movementSpeed, rotation);
			var lenY = lengthdir_y(movementSpeed, rotation);
	
			var newGridPosX = ((x - (obj_level.tileSize / 2)) + lenX) / obj_level.tileSize;
			var newGridPosY = ((y - (obj_level.tileSize / 2)) + lenY) / obj_level.tileSize;
	
			if ((newGridPosX >= obj_level.gridStart && newGridPosX <= obj_level.gridEnd) &&
				(newGridPosY >= obj_level.gridStart && newGridPosY <= obj_level.gridEnd))
			{
				if (obj_level.tileID[newGridPosX, newGridPosY] <= 2)
				{
					x += lenX;
					y += lenY;
				}
			}
		}
		break;
		
	// The new experimental input scheme
	case 1:
		if (alarm[0] <= 0)
		{
			if (iMoveLeft)
			{
				var newGridPosX = (x / obj_level.tileSize) - 1;
				var newGridPosY = y / obj_level.tileSize;
			
				if (obj_level.tileID[newGridPosX, newGridPosY] <= 2)
					x -= movementSpeed;
			}
		
			if (iMoveRight)
			{
				var newGridPosX = (x / obj_level.tileSize) + 1;
				var newGridPosY = y / obj_level.tileSize;
			
				if (obj_level.tileID[newGridPosX, newGridPosY] <= 2)
					x += movementSpeed;
			}
		
			if (iMoveUp)
			{
				var newGridPosX = x / obj_level.tileSize;
				var newGridPosY = (y / obj_level.tileSize) - 1;
			
				if (obj_level.tileID[newGridPosX, newGridPosY] <= 2)
					y -= movementSpeed;
			}
		
			if (iMoveDown)
			{
				var newGridPosX = x / obj_level.tileSize;
				var newGridPosY = (y / obj_level.tileSize) + 1;
			
				if (obj_level.tileID[newGridPosX, newGridPosY] <= 2)
					y += movementSpeed;
			}
			
			if (iMoveLeft || iMoveRight || iMoveUp || iMoveDown)
			{
				repeat (10)
				{
					var posX = xprevious + random_range(-4, 4);
					var posY = yprevious + random_range(-4, 4);
					
					instance_create_layer(posX, posY, "Particles", obj_particle_dust);
				}
				
				alarm[0] = movementCooldown;
			}
		}
		break;
		
	// The new experimental input scheme
	case 2:
		if (alarm[0] <= 0)
		{
			if (iMoveLeft)
			{
				var newGridPosX = (x / obj_level.tileSize) - 1;
				var newGridPosY = y / obj_level.tileSize;
			
				if (obj_level.tileID[newGridPosX, newGridPosY] <= 2)
				{
					x -= movementSpeed;
					iCursorX -= movementSpeed;
				}
			}
		
			if (iMoveRight)
			{
				var newGridPosX = (x / obj_level.tileSize) + 1;
				var newGridPosY = y / obj_level.tileSize;
			
				if (obj_level.tileID[newGridPosX, newGridPosY] <= 2)
				{
					x += movementSpeed;
					iCursorX += movementSpeed;
				}
			}
		
			if (iMoveUp)
			{
				var newGridPosX = x / obj_level.tileSize;
				var newGridPosY = (y / obj_level.tileSize) - 1;
			
				if (obj_level.tileID[newGridPosX, newGridPosY] <= 2)
				{
					y -= movementSpeed;
					iCursorY -= movementSpeed;
				}
			}
		
			if (iMoveDown)
			{
				var newGridPosX = x / obj_level.tileSize;
				var newGridPosY = (y / obj_level.tileSize) + 1;
			
				if (obj_level.tileID[newGridPosX, newGridPosY] <= 2)
				{
					y += movementSpeed;
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
				
				alarm[0] = movementCooldown;
			}
		}
		break;
}
