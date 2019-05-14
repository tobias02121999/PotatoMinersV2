// 
if (surface_exists(surface))
{
	surface_set_target(surface);

	draw_set_color(c_black);
	draw_set_alpha(1);

	draw_rectangle(0, 0, room_width, room_height, false);

	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_white);

	with (obj_player)
	{
		var size = obj_player.sight * obj_level.tileSize;
	
		draw_set_alpha(.75);
		draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), (size * .75) + random_range(-1, 1), false);
	
		draw_set_alpha(.25);
		draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), size + random_range(-1, 1), false);
	}

	with (obj_lantern)
	{	
		draw_set_alpha(.5);
		draw_circle((x + (obj_level.tileSize / 2)) + random_range(-1, 1), (y + (obj_level.tileSize / 2)) + random_range(-1, 1), 28 + random_range(-1, 1), false);
	
		draw_set_alpha(.25);
		draw_circle((x + (obj_level.tileSize / 2)) + random_range(-1, 1), (y + (obj_level.tileSize / 2)) + random_range(-1, 1), 38 + random_range(-1, 1), false);
	}
	
	with (obj_lava)
	{	
		draw_set_alpha(.5);
		draw_circle((x + (obj_level.tileSize / 2)) + random_range(-1, 1), (y + (obj_level.tileSize / 2)) + random_range(-1, 1), 18 + random_range(-1, 1), false);
	
		draw_set_alpha(.25);
		draw_circle((x + (obj_level.tileSize / 2)) + random_range(-1, 1), (y + (obj_level.tileSize / 2)) + random_range(-1, 1), 23 + random_range(-1, 1), false);
	}
	
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	
	surface_reset_target();
}
else
{
	surface = surface_create(room_width, room_height);
	surface_set_target(surface);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}
