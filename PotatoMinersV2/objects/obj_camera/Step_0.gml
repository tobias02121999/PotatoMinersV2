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

// Control the camera angle
camera = view_camera[viewCamID];
var startWidth = 180;
var startHeight = 203;

if (instance_exists(target))
{
	camera_set_view_angle(camera, target.image_angle * camMoveAngleIntensity);
	
	var dist = distance_to_object(target);
	var zoom = dist * camMoveZoomIntensity;
	camera_set_view_size(camera, (startWidth - zoom) * cameraZoom, (startHeight - zoom) * cameraZoom);
	
	if (target.iZoomIn)
		cameraZoom -= .1;
	
	if (target.iZoomOut)
		cameraZoom += .1;
}

// Control the camera shake
if (alarm[0] > 0)
{
	x += random_range(-.5, .5);
	y += random_range(-.5, .5);
}
