// Remove nearby collapses
if (instance_exists(obj_collapse))
{
	with (obj_collapse)
	{
		if (distance_to_point(other.x + (obj_level.tileSize / 2), other.y + (obj_level.tileSize / 2)) <= other.range)
			instance_destroy();
	}
}

// Remove nearby lava
if (instance_exists(obj_lava))
{
	with (obj_lava)
	{
		if (distance_to_point(other.x + (obj_level.tileSize / 2), other.y + (obj_level.tileSize / 2)) <= other.range)
			instance_destroy();
	}
}
