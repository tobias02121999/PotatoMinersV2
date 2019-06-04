// Move the cursor
/*
var dir = target.rotation;

var lenX = lengthdir_x(distance, dir);
var lenY = lengthdir_y(distance, dir);
	
x = target.x + lenX;
y = target.y + lenY;
*/

// Set the position of the cursor on the grid
gridPosX = clamp(x / obj_level.tileSize, 0, obj_level.gridSize - 1);
gridPosY = clamp(y / obj_level.tileSize, 0, obj_level.gridSize - 1);

// Update the mouse position
if (instance_exists(target))
{
	mouseX = target.iCursorX;
	mouseY = target.iCursorY;
}

if (mouseX >= 1 && mouseX <= room_width)
	x = mouseX;
	
if (mouseY >= 1 && mouseY <= room_height)
	y = mouseY;

move_snap(obj_level.tileSize, obj_level.tileSize);

// Get the cursor position
cursorPosX = (mouseX + (obj_level.tileSize / 2)) - 1;
cursorPosY = (mouseY + (obj_level.tileSize / 2)) - 1;

// Check if the cursor is in range
if (instance_exists(target))
{
	var dist = distance_to_object(target);
	inRange = (dist <= (target.sight * obj_level.tileSize))

	image_index = inRange;
}

// Teleport the cursor to the spawn position
if (!tpToSpawn && instance_exists(target))
{
	x = target.x;
	y = target.y;
	
	tpToSpawn = true;
}
