// Place a refined stone block
var tile = obj_level.tileID[obj_cursor.gridPosX, obj_cursor.gridPosY];

if (iBuild && obj_cursor.inRange && ((tile <= 2 && stone >= 2) || (tile == 3 && stone >= 1)))
{
	with (obj_level)
		scr_level_placeTile(obj_cursor.gridPosX, obj_cursor.gridPosY, 4, 4);

	if (tile <= 2)
		stone -= 2;
	else
		stone -= 1;
}
