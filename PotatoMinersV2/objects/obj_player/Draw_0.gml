// Draw the player shadow
draw_sprite_ext(spriteBody, image_index, x, y + 10, image_xscale, -(image_yscale * .5), 0, c_black, .35);

// Draw the players pickaxe back
if (rotation <= 45)
	draw_sprite_ext(spr_pickaxe, 0, x + 3, y + 1, image_xscale, image_yscale, pickaxeRotation, c_white, 1);

if (rotation > 45 && rotation <= 90)
	draw_sprite_ext(spr_pickaxe, 0, x - 5, y + 1, -image_xscale, image_yscale, pickaxeRotation, c_white, 1);

// Draw the player
draw_sprite_ext(spriteBody, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
draw_sprite_ext(spriteEyes, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
draw_sprite_ext(spriteNose, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
draw_sprite_ext(spriteHair, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);

// Draw the players pickaxe front
if (rotation > 90 && rotation <= 180)
	draw_sprite_ext(spr_pickaxe, 0, x, y + 1, -image_xscale, image_yscale, pickaxeRotation, c_white, 1);

if (rotation > 180 && rotation <= 360)
	draw_sprite_ext(spr_pickaxe, 0, x + 6, y + 1, image_xscale, image_yscale, pickaxeRotation, c_white, 1);
