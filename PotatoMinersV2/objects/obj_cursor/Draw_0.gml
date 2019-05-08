// Draw the grid cursor
if (obj_level.levelSize <= 0)
	draw_self();

// Draw the UI cursor
draw_sprite(sprite_index, 2, cursorPosX, cursorPosY);
