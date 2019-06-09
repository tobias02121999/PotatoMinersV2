// Draw the loading screen
scr_gui_loading();

// Draw the GUI if the players are present
if (instance_exists(target))
{
	// Draw the border
	scr_gui_border();
	
	// Draw the victory announce message
	scr_gui_victory();
}
