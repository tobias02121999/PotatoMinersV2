// Initialize the support variables
range = obj_level.tileSize;
image_xscale = 1;
image_yscale = image_xscale;

// Remove nearby collapses
if (instance_exists(obj_collapse))
{
	with (obj_collapse)
	{
		if (distance_to_point(other.x + (obj_level.tileSize / 2), other.y + (obj_level.tileSize / 2)) <= other.range)
			instance_destroy();
	}
}
