// Draw the level generation loading screen
if (obj_level.levelSize > 0)
{
	// Draw the background
	var color = make_color_rgb(30, 28, 43);
	draw_set_color(color);
	
	draw_rectangle(0, 0, 1920, 1080, false);	
	
	// Draw the 'generating...' text
	var posX = 810;
	var posY = 470;
	var scale = 4;
	
	draw_set_color(c_white);
	
	if (obj_level.oreAmount > 0)
		draw_text_transformed(posX, posY, "generating ores...", scale, scale, 0);
	else
		draw_text_transformed(posX, posY, "generating caves...", scale, scale, 0);
	
	// Draw the loading bar
	var posX = 830;
	var posY = 540;
	var width = 28 * 10;
	var height = 3 * 10;
	
	// Calculate the current level size and level generation percentage
	var currentLevelSize = startLevelSize - (obj_level.levelSize + obj_level.oreAmount);
	var percentage = currentLevelSize / startLevelSize;
	
	// Loading bar filling
	draw_set_color(c_green);
	draw_rectangle(posX, posY, posX + (width * percentage), posY + height, false);
	
	draw_sprite_ext(spr_bar, 0, posX, posY, 10, 10, 0, c_white, 1);
	
	// Reset the default draw color
	draw_set_color(c_white);
}
