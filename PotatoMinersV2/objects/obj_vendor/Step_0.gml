// Check for collision with the player
if (place_meeting(x, y, obj_player) && !activated && obj_player.coin >= cost)
{
	script_execute(vendorScript); // Run the vendor script
	obj_player.coin -= cost; // Pay for the vendor with coins
	activated = true;	
}

if (!place_meeting(x, y, obj_player))
	activated = false;
