// Draw the border
if (view == 1)
	draw_sprite_ext(spr_border, 0, 0, 0, 2, 2, 0, c_white, 1);

// Draw the material UI elements
var startPosX = view_get_xport(view) + 88;
var startPosY = 1040;
var dist = 112;
var textDist = 16;

for (var i = 0; i <= 4; i++)
{
	var xPos = startPosX + (i * dist);
	draw_sprite_ext(spr_icon_materials, i, xPos, startPosY, 1.32, 1.32, 0, c_white, 1);

	// Draw the values
	switch (i)
	{
		// Stone
		case 0:
			draw_text_transformed(xPos + textDist, startPosY, string(target.stone), 3, 3, 0);
			break;
			
		// Coal
		case 1:
			draw_text_transformed(xPos + textDist, startPosY, string(target.coal), 3, 3, 0);
			break;
			
		// Iron
		case 2:
			draw_text_transformed(xPos + textDist, startPosY, string(target.iron), 3, 3, 0);
			break;
				
		// Gold
		case 3:
			draw_text_transformed(xPos + textDist, startPosY, string(target.gold), 3, 3, 0);
			break;
				
		// Diamond
		case 4:
			draw_text_transformed(xPos + textDist, startPosY, string(target.diamond), 3, 3, 0);
			break;
	}
}
	
// Draw the item UI elements
var startPosX = view_get_xport(view) + 550;
var startPosY = 1040;
var dist = 112;
var textDist = 16;

for (var i = 0; i <= 3; i++)
{
	var xPos = startPosX + (i * dist);
	var startPosY = 40;
	draw_sprite_ext(spr_icon_items, i, xPos, startPosY, 1.32, 1.32, 0, c_white, 1);
	
	// Draw the values
	switch (i)
	{
		// Supports
		case 0:
			draw_text_transformed(xPos + textDist, startPosY, string(target.supports), 3, 3, 0);
			break;
				
		// Lanterns
		case 1:
			draw_text_transformed(xPos + textDist, startPosY, string(target.lanterns), 3, 3, 0);
			break;
			
		// Bombs
		case 2:
			draw_text_transformed(xPos + textDist, startPosY, string(target.bombs), 3, 3, 0);
			break;
				
		// Coins
		case 3:
			draw_text_transformed(xPos + textDist, startPosY, string(target.coin), 3, 3, 0);
			break;
	}
}

// Draw the equipment UI elements
var startPosX = view_get_xport(view) + 88;
var startPosY = 40;
var dist = 112;
var textDist = 16;

for (var i = 0; i <= 1; i++)
{
	var xPos = startPosX + (i * dist);
	draw_sprite_ext(spr_icon_equipment, i, xPos, startPosY, 1.32, 1.32, 0, c_white, 1);
	
	// Draw the values
	switch (i)
	{
		// Pickaxe
		case 0:
			draw_text_transformed(xPos + textDist, startPosY, string(target.pickaxe), 3, 3, 0);
			break;
				
		// Sight
		case 1:
			draw_text_transformed(xPos + textDist, startPosY, string(target.sight), 3, 3, 0);
			break;
	}
}
