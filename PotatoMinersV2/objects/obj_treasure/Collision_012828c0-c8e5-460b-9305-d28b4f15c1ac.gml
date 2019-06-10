// Announce the winner
if (!other.tutorial)
{
	obj_camera.winner = 0;
	obj_camera.gameOver = true;
	obj_level.alarm[1] = victoryScreenDuration;
}

other.tutorialHasTreasured = true;
