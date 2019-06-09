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
		
	inputReceived = true;
}

if (iMenuDown && !inputReceived)
{
	if (buttonSelected < buttonAmount - 1)
		buttonSelected++;
	else
		buttonSelected = 0;
		
	inputReceived = true;
}

if (!iMenuUp && !iMenuDown)
	inputReceived = false;
	
// Confirm the selected button and run the appropriate menu script
if (iMenuConfirm)
	script_execute(buttonScript[buttonSelected]);
