// Get user input
scr_system_input(0);

// Switch through the selected buttons
var buttonAmount = array_length_1d(buttonSprite);
if (iMenuUp && !inputReceived)
{
	if (buttonSelected >= 1)
		buttonSelected--;
	else
		buttonSelected = buttonAmount - 1;
		
	audio_sound_pitch(snd_select, random_range(.5, 1.25));
	audio_play_sound(snd_select, 0, false);
		
	inputReceived = true;
}

if (iMenuDown && !inputReceived)
{
	if (buttonSelected < buttonAmount - 1)
		buttonSelected++;
	else
		buttonSelected = 0;
		
	audio_sound_pitch(snd_select, random_range(.5, 1.25));
	audio_play_sound(snd_select, 0, false);
		
	inputReceived = true;
}

if (!iMenuUp && !iMenuDown)
	inputReceived = false;
	
// Confirm the selected button and run the appropriate menu script
if (iMenuConfirm)
{
	audio_sound_pitch(snd_confirm, random_range(.5, 1.25));
	audio_play_sound(snd_confirm, 0, false);
	
	script_execute(buttonScript[buttonSelected]);
}
