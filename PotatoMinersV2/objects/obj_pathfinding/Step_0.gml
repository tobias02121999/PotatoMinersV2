/*
// Loop through the grid horizontally
for (var xx = 0; xx < gridSize; xx++)
{
	// Loop through the grid vertically
	for (var yy = 0; yy < gridSize; yy++)	
	{
		if (obj_level.tileID[xx, yy] >= 3)
		{
			if (mp_grid_get_cell(global.grid, xx, yy) == 0)
				mp_grid_add_cell(global.grid, xx, yy);
		}
		else
			mp_grid_clear_cell(global.grid, xx, yy);
	}
}
*/
