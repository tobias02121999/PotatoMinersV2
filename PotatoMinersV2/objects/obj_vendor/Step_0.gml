// Check for collision with the player
if (place_meeting(x, y, obj_cursor))
{
	if (!activated && player.iMine && (!player.tutorial || player.tutorialStage == tutorialUnlockStage) && player.coin >= cost[vendorMenu.image_index])
	{
		with (player) 
		{
			script_execute(other.vendorScript[other.vendorMenu.image_index]); // Run the vendor script
			coin -= other.cost[other.vendorMenu.image_index]; // Pay for the vendor with coins
		}
		
		// Multiply the cost for future purchases
		if (multiplyCost)
			cost[other.vendorMenu.image_index] *= 2;
		
		audio_sound_pitch(snd_vendor, random_range(.5, 1.25));
		audio_play_sound(snd_vendor, 0, false);
		
		activated = true;	
	}
}

if (!player.iMine)
	activated = false;
	
selected = (place_meeting(x, y, obj_cursor))

// Update the vendor dialog variables
vendorDialog.cost = cost[vendorMenu.image_index];

vendorDialog.visible = selected;
vendorMenu.visible = selected;
