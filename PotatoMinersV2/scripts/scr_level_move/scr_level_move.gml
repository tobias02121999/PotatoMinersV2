// Move the level object
var dir = round(random_range(0, 3)); // Get a random direction (right; up; left; down)

// Run the code for the appropriate direction (randomly chosen above)
switch (dir)
{
	// Move right
	case 0:
		if (gridPosX + 1 <= gridEnd) // C heck if there's place on the playable grid
			x += tileSize; // Move
		break;
		
	// Move up
	case 1:
		if (gridPosY - 1 >= gridStart) // Check if there's place on the playable grid
			y -= tileSize; // Move
		break;
		
	// Move left
	case 2:
		if (gridPosX - 1 >= gridStart) // Check if there's place on the playable grid
			x -= tileSize; // Move
		break;
		
	// Move down
	case 3:
		if (gridPosY + 1 <= gridEnd) // Check if there's place on the playable grid
			y += tileSize; // Move
		break;
}
