// Pause/resume the game
var pause = argument0;

if (pause)
{
	instance_activate_object(menu);
	instance_deactivate_object(obj_collapse);
	with (obj_player) state = "PAUSED";
	with (obj_cursor) visible = false;
	isPaused = true;
}
else
{
	instance_deactivate_object(menu);
	instance_activate_object(obj_collapse);
	with (obj_player) state = "DEFAULT";
	with (obj_cursor) visible = true;
	isPaused = false;	
}
