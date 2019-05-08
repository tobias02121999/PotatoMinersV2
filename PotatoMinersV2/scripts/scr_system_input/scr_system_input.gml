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
		
		iEnemy = keyboard_check_pressed(vk_tab);
		break;
}
