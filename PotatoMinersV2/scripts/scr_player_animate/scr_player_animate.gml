// Animate the player sprite
switch (rotation)
{
	// Facing right
	case 0:
		sprite_index = spr_potato_right;
		break;
		
	// Facing upwards
	case 90:
		sprite_index = spr_potato_up;
		break;
		
	// Facing left
	case 180:
		sprite_index = spr_potato_left;
		break;
		
	// Facing downwards
	case 270:
		sprite_index = spr_potato_down;
		break;
}
