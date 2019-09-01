// Inherit the parent event
event_inherited();

// Customize the camera variables
target = obj_player_0;
viewCamID = 1;

// Initialize the view camera
scr_camera_view(self.id, viewCamID);
