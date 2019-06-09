// Draw the menu buttons
var buttonAmount = array_length_1d(buttonSprite);
for (var i = 0; i < buttonAmount; i++)
{
	var sprite = buttonSprite[i];
	
	var distX = buttonSpacingHorizontal;
	var distY = buttonSpacingVertical;
	
	var posX = buttonStartX + (i * distX);
	var posY = buttonStartY + (i * distY);
	
	var index = (i == buttonSelected);
	
	draw_sprite_ext(sprite, index, posX, posY, image_xscale, image_yscale, 0, c_white, 1);
}
