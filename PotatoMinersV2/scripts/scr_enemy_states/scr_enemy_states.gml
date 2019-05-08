// Run the current enemy state

// Scroll through the different player states, and run the appropriate code
switch (state)
{
	// The idle player state
	case "IDLE":
		//scr_player_move();
		scr_enemy_turn();
		scr_enemy_animate();
		break;
}
