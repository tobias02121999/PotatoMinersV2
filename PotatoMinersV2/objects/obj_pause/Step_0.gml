// Get the user input
scr_system_input(0);

// Pause/resume the game and display/hide the pause menu
if (iMenuPause && !inputReceived)
{
	scr_system_pause(!isPaused);
	inputReceived = true;
}

if (!iMenuPause)
	inputReceived = false;
