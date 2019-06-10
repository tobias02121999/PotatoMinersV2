// Draw the loading screen
scr_gui_loading();

// Draw the GUI if the players are present
if (instance_exists(target))
{
	// Draw the border
	scr_gui_border();
	
	// Draw the victory announce message
	scr_gui_victory();
	
	// Show the level sheet
	var xPos = view_get_xport(view) + 15;
	var yPos = 46;

	if (target.iShowSheet)
	{
		draw_sprite_ext(spr_levelSheet, 0, xPos, yPos, 3, 3, 0, c_white, 1);
		target.tutorialHasCheated = true;
	}
		
	if (target.tutorial)
		scr_gui_tutorial();
}
