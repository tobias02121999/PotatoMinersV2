// Lerp towards the player object
if (instance_exists(obj_player))
{
	var dist = distance_to_object(obj_player);
	var spd = dist * lerpRate;

	move_towards_point(obj_player.x, obj_player.y, spd);
}
