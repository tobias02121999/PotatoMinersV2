// Draw the grid cursor
if (instance_exists(target))
{
	if (view_current == target.inputScheme)
	{
		if (obj_level.levelSize <= 0)
			draw_self();

		// Draw the UI cursor and its shadow
		draw_sprite_ext(spr_cursor, target.iMine, cursorPosX, cursorPosY + 16, .25, .125, 0, c_black, .35);
		draw_sprite_ext(spr_cursor, target.iMine, cursorPosX, cursorPosY, .25, .25, 0, c_white, 1);
	}
}
