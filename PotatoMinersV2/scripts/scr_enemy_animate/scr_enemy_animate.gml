// Animate the slime sprite
switch (rotation)
{
	// Facing right
	case 0:
		sprite_index = spr_slime_right;
		break;
		
	// Facing upwards
	case 90:
		sprite_index = spr_slime_up;
		break;
		
	// Facing left
	case 180:
		sprite_index = spr_slime_left;
		break;
		
	// Facing downwards
	case 270:
		sprite_index = spr_slime_down;
		break;
}
