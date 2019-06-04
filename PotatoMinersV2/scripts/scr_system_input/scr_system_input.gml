// Store the user input in variables
switch (inputScheme)
{
	// The original (classic) input scheme
	case 0:
		iTurnLeft = keyboard_check(vk_left);
		iTurnRight = keyboard_check(vk_right);
		iTurnUp = keyboard_check(vk_up);
		iTurnDown = keyboard_check(vk_down);
		
		iMove = keyboard_check_pressed(vk_space);
		iMine = iMove;
		break;
		
	// The new experimental input scheme
	case 1:
		iMoveLeft = keyboard_check(ord("A"));
		iMoveRight = keyboard_check(ord("D"));
		iMoveUp = keyboard_check(ord("W"));
		iMoveDown = keyboard_check(ord("S"));
		
		iMine = mouse_check_button(mb_left);
		iBuild = mouse_check_button(mb_right);
		
		iLantern = keyboard_check_pressed(vk_control);
		iSupport = keyboard_check_pressed(vk_shift);
		
		iBomb = keyboard_check_pressed(vk_tab);
		
		iCursorX = mouse_x;
		iCursorY = mouse_y;
		break;
		
	// The new second player experimental input scheme
	case 2:
		gamepad_set_axis_deadzone(0, .25); // Set the axis deadzone (threshold)
		
		iMoveLeft = (gamepad_axis_value(0, gp_axislh) < 0);
		iMoveRight = (gamepad_axis_value(0, gp_axislh) > 0);
		iMoveUp = (gamepad_axis_value(0, gp_axislv) < 0);
		iMoveDown = (gamepad_axis_value(0, gp_axislv) > 0);
		
		iMine = (gamepad_axis_value(0, gp_shoulderrb) > 0);
		iBuild = (gamepad_axis_value(0, gp_shoulderlb) > 0);
		
		iLantern = gamepad_button_check_pressed(0, gp_shoulderl);
		iSupport = gamepad_button_check_pressed(0, gp_shoulderr);
		
		iBomb = false;
		
		iCursorX += gamepad_axis_value(0, gp_axisrh);
		iCursorY += gamepad_axis_value(0, gp_axisrv);
		break;
}
