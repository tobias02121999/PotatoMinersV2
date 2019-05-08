// Turn the player
switch (inputScheme)
{
	// The original (classic) input scheme
	case 0:
		// Turn the player towards the pressed direction
		if (iTurnRight)
			rotation = 0;

		if (iTurnLeft)
			rotation = 180;

		if (iTurnUp)
			rotation = 90;
	
		if (iTurnDown)
			rotation = 270;
		break;
		
	// The new experimental input scheme
	case 1:
		var dir = point_direction(x, y, obj_cursor.cursorPosX, obj_cursor.cursorPosY);
		
		if ((dir >= 315 && dir < 360) || (dir >= 0 && dir < 45))
			rotation = 0;
			
		if (dir >= 45 && dir < 135)
			rotation = 90;
			
		if (dir >= 135 && dir < 225)
			rotation = 180;
			
		if (dir >= 225 && dir < 315)
			rotation = 270;
		break;
}
