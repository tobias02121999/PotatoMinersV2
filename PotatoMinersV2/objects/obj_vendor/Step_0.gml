// Check for collision with the player
if (place_meeting(x, y, obj_cursor) && !activated && player.iMine && (!player.tutorial || player.tutorialStage == tutorialUnlockStage))
{
	if (player.coin >= cost)
	{
		with (player) 
		{
			script_execute(other.vendorScript); // Run the vendor script
			coin -= other.cost; // Pay for the vendor with coins
		}
		
		audio_sound_pitch(snd_vendor, random_range(.5, 1.25));
		audio_play_sound(snd_vendor, 0, false);
		
		activated = true;	
	}
}

if (!player.iMine)
	activated = false;
	
selected = (place_meeting(x, y, obj_cursor))

// Update the vendor dialog variables
vendorDialog.cost = cost;
vendorDialog.visible = selected;
