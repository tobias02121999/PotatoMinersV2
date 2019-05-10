// Run the current player state

// Scroll through the different player states, and run the appropriate code
switch (state)
{
	// The idle player state
	case "DEFAULT":
		scr_player_mine();
		scr_player_build();
		scr_player_lantern();
		scr_player_support();
		scr_player_bomb();
		scr_player_move();
		scr_player_turn();
		scr_player_animate();
		break;
}
