// Follow the player
var posX = (obj_player.x - (obj_level.tileSize / 2)) / obj_level.tileSize;
var posY = (obj_player.y - (obj_level.tileSize / 2)) / obj_level.tileSize;

if (mp_grid_path(global.grid, path, x, y, 0, 0, false))
{
	path_start(path, movementSpeed, path_action_stop, false);	
}
