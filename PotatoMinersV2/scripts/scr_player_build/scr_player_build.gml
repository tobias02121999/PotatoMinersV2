// Place a refined stone block
var tile = obj_level.tileID[cursor.gridPosX, cursor.gridPosY];

if (iBuild && cursor.inRange && ((tile <= 2 && stone >= 2) || (tile == 3 && stone >= 1)) && !place_meeting(cursor.x, cursor.y, obj_vendor))
{
	with (obj_level)
		scr_level_placeTile(other.cursor.gridPosX, other.cursor.gridPosY, 4, 4);

	if (tile <= 2)
		stone -= 2;
	else
		stone -= 1;
}
