// Control the tutorial
if (tutorial)
{
	switch (tutorialStage)
	{
		// Introduction
		case 0:
			if (alarm[1] <= 0)
				tutorialStage++;
			break;
		
		// Movement
		case 1:
			if (tutorialHasMoved)
				tutorialStage++;
			break;
			
		// Mining
		case 2:
			if (tutorialHasMined)
				tutorialStage++;
			break;
			
		// Support
		case 3:
			if (tutorialHasSupported)
				tutorialStage++;
			break;
			
		// Build
		case 4:
			if (tutorialHasBuilt)
			{
				tutorialStage++;
				
				stone = 15;
				iron = 10;
				gold = 5;
				diamond = 1;
			}
			break;
			
		// Sell
		case 5:
			if (tutorialHasSold)
				tutorialStage++;
			break;
			
		// Buy
		case 6:
			if (tutorialHasBought)
				tutorialStage++;
			break;
			
		// Lantern
		case 7:
			if (tutorialHasLanterned)
			{
				alarm[1] = 500;
				tutorialStage++;
			}
			break;
			
		// Upgrades
		case 8:
			if (alarm[1] <= 0)
				tutorialStage++;
			break;
			
		// Cheat sheet
		case 9:
			if (tutorialHasCheated)
				tutorialStage++;
			break;
			
		// Treasure
		case 10:
			
			break;
	}
}
