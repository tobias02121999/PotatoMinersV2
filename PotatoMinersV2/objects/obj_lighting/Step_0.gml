// 
if (surface_exists(surface))
{
	surface_set_target(surface);

	var color = make_color_rgb(30, 28, 43);
	
	draw_set_color(color);
	draw_set_alpha(1);

	draw_rectangle(0, 0, room_width, room_height, false);

	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_white);

	with (obj_player)
	{
		if (view_current == 1)
		{
			var size = sight * obj_level.tileSize;
	
			draw_set_alpha(.75);
			draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), size + random_range(-1, 1), false);
		}
	}

	with (obj_lantern)
	{	
		if (discovered[view_current])
		{
			draw_set_alpha(1);
			draw_circle((x + (obj_level.tileSize / 2)) + random_range(-1, 1), (y + (obj_level.tileSize / 2)) + random_range(-1, 1), 65 + random_range(-1, 1), false);
		}
	}
	
	if (instance_exists(obj_explosion))
	{
		with (obj_explosion)
		{	
			draw_set_alpha(1);
			draw_circle((x + (obj_level.tileSize / 2)), (y + (obj_level.tileSize / 2)), 50 + random_range(0, 50), false);
		}
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
