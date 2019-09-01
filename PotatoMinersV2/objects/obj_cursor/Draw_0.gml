// Draw the grid cursor
if (instance_exists(target))
{
	// Draw the mining completion bar
	if (target.miningCompletion > 0)
	{
		var posX = x + 3.5;
		var posY = y + 7;
		var size = .5;
		var width = 16 * size;
		var height = 3 * size;
		
		var percentage = target.miningCompletion;
		
		// Completion bar filling
		draw_set_color(c_green);
		draw_rectangle(posX, posY, posX + (width * percentage), posY + height, false);
		draw_set_color(c_white);
		
		draw_sprite_ext(spr_bar, 1, posX, posY, size, size, 0, c_white, 1);
	}
	
	if (view_current == target.inputScheme)
	{
		if (obj_level.levelSize <= 0)
			draw_self();

		// Draw the UI cursor and its shadow
		draw_sprite_ext(spr_cursor, target.iMine, cursorPosX, cursorPosY + 16, .25, .125, 0, c_black, .35);
		draw_sprite_ext(spr_cursor, target.iMine, cursorPosX, cursorPosY, .25, .25, 0, c_white, 1);
	}
	
	// Draw the support count
	draw_sprite_ext(spr_icon_items, 0, cursorPosX + 12, cursorPosY - 8, .25, .25, 0, c_white, supportCountAlpha);
	
	draw_set_alpha(supportCountAlpha);
	draw_text_transformed(cursorPosX + 14, cursorPosY - 8, target.supports, .5, .5, 0);
	draw_set_alpha(1);
}
