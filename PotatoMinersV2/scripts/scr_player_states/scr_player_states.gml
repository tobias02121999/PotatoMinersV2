// Run the current player state

// Scroll through the different player states, and run the appropriate code
switch (state)
{
	// The default player state
	case "DEFAULT":
		if (!tutorial || tutorialStage >= 1)
			scr_player_move();
	
		if (!tutorial || tutorialStage == 2)
			scr_player_mine();
			
		if (!tutorial || tutorialStage == 3)
			scr_player_support();
			
		if (!tutorial || tutorialStage == 4)
			scr_player_build();
			
		if (!tutorial || tutorialStage == 7)
			scr_player_lantern();
			
		scr_player_turn();
		scr_player_animate();
		
		if (!tutorial)
			scr_player_suicide();
			
		scr_player_tutorial();
		break;
		
	// The paused player state
	case "PAUSED":
		scr_player_animate();
		break;
}
