// Move the cursor
/*
var dir = obj_player.rotation;

var lenX = lengthdir_x(distance, dir);
var lenY = lengthdir_y(distance, dir);
	
x = obj_player.x + lenX;
y = obj_player.y + lenY;
*/

// Set the position of the cursor on the grid
gridPosX = clamp(x / obj_level.tileSize, 0, obj_level.gridSize - 1);
gridPosY = clamp(y / obj_level.tileSize, 0, obj_level.gridSize - 1);

if (mouse_x >= 1 && mouse_x <= room_width)
	x = mouse_x;
	
if (mouse_y >= 1 && mouse_y <= room_height)
	y = mouse_y;

move_snap(obj_level.tileSize, obj_level.tileSize);

// Get the cursor position
cursorPosX = (mouse_x + (obj_level.tileSize / 2)) - 1;
cursorPosY = (mouse_y + (obj_level.tileSize / 2)) - 1;

// Check if the cursor is in range
if (instance_exists(obj_player))
{
	var dist = distance_to_object(obj_player);
	inRange = (dist <= (obj_player.sight * obj_level.tileSize))

	image_index = inRange;
}
