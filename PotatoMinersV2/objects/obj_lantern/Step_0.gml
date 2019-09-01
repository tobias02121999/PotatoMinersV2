// Check if a player discovers the lantern
var target = instance_nearest(x, y, obj_player);
var dist = (target.sight * obj_level.tileSize) / 2;
if (distance_to_object(target) <= dist)
	discovered[target.playerID] = true;
