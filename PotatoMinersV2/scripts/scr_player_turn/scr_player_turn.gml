// Turn the player
var dir = point_direction(x, y, cursor.cursorPosX, cursor.cursorPosY);
		
if ((dir >= 337.5 && dir < 360) || (dir >= 0 && dir < 22.5))
	rotation = 0;
			
if (dir >= 22.5 && dir < 67.5)
	rotation = 45;
			
if (dir >= 67.5 && dir < 112.5)
	rotation = 90;
			
if (dir >= 112.5 && dir < 157.5)
	rotation = 135;
			
if (dir >= 157.5 && dir < 202.5)
	rotation = 180;
			
if (dir >= 202.5 && dir < 247.5)
	rotation = 225;
			
if (dir >= 247.5 && dir < 292.5)
	rotation = 270;
	
if (dir >= 292.5 && dir < 337.5)
	rotation = 315;
