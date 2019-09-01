// Store the user input in variables
var inputScheme = argument0;

switch (inputScheme)
{
	// The menu input scheme
	case 0:
		gamepad_set_axis_deadzone(0, .5); // Set the axis deadzone (threshold)
	
		iMenuUp = keyboard_check(vk_up) || keyboard_check(ord("W")) || (gamepad_axis_value(0, gp_axislv) < 0);
		iMenuDown = keyboard_check(vk_down) || keyboard_check(ord("S")) || (gamepad_axis_value(0, gp_axislv) > 0);
		
		iMenuConfirm = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, gp_face1);
		
		iMenuPause = keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start);
		break;
		
	// The player 1 (0) input scheme (keyboard + mouse)
	case 1:
		iMoveLeft = keyboard_check(ord("A"));
		iMoveRight = keyboard_check(ord("D"));
		iMoveUp = keyboard_check(ord("W"));
		iMoveDown = keyboard_check(ord("S"));
		
		iMine = mouse_check_button(mb_left);
		iBuild = mouse_check_button(mb_right);
		
		iLantern = keyboard_check_pressed(vk_control);
		iSupport = keyboard_check_pressed(vk_shift);
		
		iBomb = keyboard_check_pressed(vk_alt);
		
		iCursorX = window_view_mouse_get_x(1);
		iCursorY = window_view_mouse_get_y(1);
		
		iShowSheet = keyboard_check(vk_tab);
		
		iSuicide = keyboard_check_pressed(ord("R"));
		
		iVendorLeft = keyboard_check_pressed(ord("Q"));
		iVendorRight = keyboard_check_pressed(ord("E"));
		
		iZoomIn = mouse_wheel_up();
		iZoomOut = mouse_wheel_down();
		break;
		
	// The player 2 (1) input scheme (gamepad)
	case 2:		
		iMoveLeft = (gamepad_axis_value(0, gp_axislh) < 0);
		iMoveRight = (gamepad_axis_value(0, gp_axislh) > 0);
		iMoveUp = (gamepad_axis_value(0, gp_axislv) < 0);
		iMoveDown = (gamepad_axis_value(0, gp_axislv) > 0);
		
		iMine = gamepad_button_check(0, gp_shoulderrb);
		iBuild = gamepad_button_check(0, gp_shoulderlb);
		
		iLantern = gamepad_button_check_pressed(0, gp_shoulderl);
		iSupport = gamepad_button_check_pressed(0, gp_shoulderr);
		
		iBomb = gamepad_button_check_pressed(0, gp_stickl);
		
		iCursorX += gamepad_axis_value(0, gp_axisrh) * sensitivity;
		iCursorY += gamepad_axis_value(0, gp_axisrv) * sensitivity;
		
		iShowSheet = gamepad_button_check(0, gp_select);
		
		iSuicide = gamepad_button_check(0, gp_face4);
		
		iVendorLeft = gamepad_button_check_pressed(0, gp_padl);
		iVendorRight = gamepad_button_check_pressed(0, gp_padr);
		
		iZoomIn = false;
		iZoomOut = false;
		break;
}
