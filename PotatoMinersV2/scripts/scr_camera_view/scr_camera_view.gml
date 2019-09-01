// Initialize the view camera

// Get the arguments
var target = argument0;
var viewID = argument1;

// Create and assign the view camera
view_camera[viewID] = camera_create_view(0, 0, 180, 203, 0, target, -1, -1, 3200, 3200);
