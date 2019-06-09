// Draw the border
if (view == 1)
	draw_sprite(spr_border, 0, 0, 0);

// Draw the material UI elements
var startPosX = view_get_xport(view) + 44;
var startPosY = 520;
var dist = 56;
var textDist = 8;

for (var i = 0; i <= 3; i++)
{
	var xPos = startPosX + (i * dist);
	draw_sprite_ext(spr_icon_materials, i, xPos, startPosY, 2, 2, 0, c_white, 1);

	// Draw the values
	switch (i)
	{
		// Stone
		case 0:
			draw_text_transformed(xPos + textDist, startPosY, string(target.stone), 1.5, 1.5, 0);
			break;
			
		// Iron
		case 1:
			draw_text_transformed(xPos + textDist, startPosY, string(target.iron), 1.5, 1.5, 0);
			break;
				
		// Gold
		case 2:
			draw_text_transformed(xPos + textDist, startPosY, string(target.gold), 1.5, 1.5, 0);
			break;
				
		// Diamond
		case 3:
			draw_text_transformed(xPos + textDist, startPosY, string(target.diamond), 1.5, 1.5, 0);
			break;
	}
}
	
// Draw the item UI elements
var startPosX = view_get_xport(view) + 320;
var startPosY = 520;
var dist = 56;
var textDist = 8;

for (var i = 0; i <= 2; i++)
{
	var xPos = startPosX + (i * dist);
	draw_sprite_ext(spr_icon_items, i, xPos, startPosY, 2, 2, 0, c_white, 1);
	
	// Draw the values
	switch (i)
	{
		// Supports
		case 0:
			draw_text_transformed(xPos + textDist, startPosY, string(target.supports), 1.5, 1.5, 0);
			break;
				
		// Lanterns
		case 1:
			draw_text_transformed(xPos + textDist, startPosY, string(target.lanterns), 1.5, 1.5, 0);
			break;
				
		// Coins
		case 2:
			draw_text_transformed(xPos + textDist, startPosY, string(target.coin), 1.5, 1.5, 0);
			break;
	}
}
	
// Draw the equipment UI elements
var startPosX = view_get_xport(view) + 44;
var startPosY = 20;
var dist = 56;
var textDist = 8;

for (var i = 0; i <= 1; i++)
{
	var xPos = startPosX + (i * dist);
	draw_sprite_ext(spr_icon_equipment, i, xPos, startPosY, 2, 2, 0, c_white, 1);
	
	// Draw the values
	switch (i)
	{
		// Pickaxe
		case 0:
			draw_text_transformed(xPos + textDist, startPosY, string(target.pickaxe), 1.5, 1.5, 0);
			break;
				
		// Sight
		case 1:
			draw_text_transformed(xPos + textDist, startPosY, string(target.sight), 1.5, 1.5, 0);
			break;
	}
}
