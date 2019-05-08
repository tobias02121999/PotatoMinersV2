// Initialize the pathfinding variables
tileSize = obj_level.tileSize;
gridSize = obj_level.gridSize;

global.grid = mp_grid_create(0, 0, gridSize, gridSize, tileSize, tileSize);
