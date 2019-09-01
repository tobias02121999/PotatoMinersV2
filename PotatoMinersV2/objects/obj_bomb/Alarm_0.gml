// Explode
with (obj_level)
	scr_level_placeTileRect(other.gridPosX - other.range, other.gridPosY - other.range, (other.range * 2) + 1, (other.range * 2) + 1, 1, 2, true);

var tileSize = obj_level.tileSize;
var pixRange = range * tileSize;

var startPosX = (x - (tileSize / 2)) - pixRange;
var startPosY = (y - (tileSize / 2)) - pixRange;

var width = pixRange * 3;
var height = pixRange * 3;

for (var xx = startPosX; xx <= ((startPosX + width) - tileSize); xx += tileSize)
{
	for (var yy = startPosY; yy <= ((startPosY + height) - tileSize); yy += tileSize)
	{
		if (!place_meeting(xx + (tileSize / 2), yy + (tileSize / 2), obj_collapse))
			instance_create_layer(xx, yy, "Items", obj_collapse);
	}
}

instance_create_layer(x, y, "Particles", obj_explosion);

obj_camera_0.alarm[0] = 30;
obj_camera_1.alarm[0] = 30;

instance_destroy();
