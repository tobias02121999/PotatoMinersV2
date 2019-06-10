// Animate the player sprite
switch (rotation)
{
	// Facing right
	case 0:
		image_index = 0;
		break;
		
	// Facing right-up
	case 45:
		image_index = 1;
		break;
		
	// Facing upwards
	case 90:
		image_index = 2;
		break;
		
	// Facing up-left
	case 135:
		image_index = 3;
		break;
		
	// Facing left
	case 180:
		image_index = 4;
		break;
		
	// Facing left-down
	case 225:
		image_index = 5;
		break;
		
	// Facing downwards
	case 270:
		image_index = 6;
		break;
		
	// Facing down-right
	case 315:
		image_index = 7;
		break;
}

// Return the players angle back to default
if (image_angle >= walkRotationResetSpeed)
	image_angle -= walkRotationResetSpeed;

if (image_angle <= -walkRotationResetSpeed)
	image_angle += walkRotationResetSpeed;
	
if (!(image_angle >= walkRotationResetSpeed) && !(image_angle <= -walkRotationResetSpeed))
	image_angle = 0;

// Move the player sprite towards the target position
var dist = distance_to_point(moveTargetX, moveTargetY);

if (dist >= moveTargetSpeed)
	move_towards_point(moveTargetX, moveTargetY, moveTargetSpeed);
else
{
	x = moveTargetX;
	y = moveTargetY;
}
