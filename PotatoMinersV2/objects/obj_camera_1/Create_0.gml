// Inherit the parent event
event_inherited();

// Customize the camera variables
target = obj_player_1;
viewCamID = 2;

// Initialize the view camera
scr_camera_view(self.id, viewCamID);
