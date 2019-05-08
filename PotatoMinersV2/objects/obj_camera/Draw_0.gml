// Draw the level generation loading screen
if (obj_level.levelSize > 0)
{
	// Draw the background
	draw_set_color(c_black);
	draw_rectangle(0, 0, 960, 540, false);	
	
	// Draw the 'generating...' text
	var posX = 44 + 46;
	var posY = 48;
	var scale = .2;
	
	draw_set_color(c_white);
	
	if (obj_level.oreAmount > 0)
		draw_text_transformed(posX, posY, "Generating ores...", scale, scale, 0);
	else
		draw_text_transformed(posX, posY, "Generating caves...", scale, scale, 0);
	
	// Draw the loading bar
	var posX = 46 + 46;
	var posY = 58;
	var width = 28;
	var height = 3;
	
	// Loading bar background
	//draw_rectangle(posX - (outlineSize / 2), posY - (outlineSize / 2), (posX + width) + (outlineSize / 2), (posY + height) + (outlineSize / 2), false);
	
	// Calculate the current level size and level generation percentage
	var currentLevelSize = startLevelSize - (obj_level.levelSize + obj_level.oreAmount);
	var percentage = currentLevelSize / startLevelSize;
	
	// Loading bar filling
	draw_set_color(c_green);
	draw_rectangle(posX, posY, posX + (width * percentage), posY + height, false);
	
	draw_sprite(spr_bar, 0, posX, posY);
	
	// Reset the default draw color
	draw_set_color(c_white);
}
