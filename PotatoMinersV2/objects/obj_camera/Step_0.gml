// Lerp towards the player object
if (instance_exists(target))
{
	var dist = distance_to_object(target);
	var spd = dist * lerpRate;

	move_towards_point(target.x, target.y, spd);
}

// Assign a view to the camera
if (instance_exists(target))
	view = target.inputScheme;
