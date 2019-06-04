// Turn the player
var dir = point_direction(x, y, cursor.cursorPosX, cursor.cursorPosY);
		
if ((dir >= 315 && dir < 360) || (dir >= 0 && dir < 45))
	rotation = 0;
			
if (dir >= 45 && dir < 135)
	rotation = 90;
			
if (dir >= 135 && dir < 225)
	rotation = 180;
			
if (dir >= 225 && dir < 315)
	rotation = 270;
