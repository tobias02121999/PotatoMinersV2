// Draw the vendor shadow
draw_sprite_ext(sprite_index, image_index, x, y + 24, image_xscale, -(image_yscale * .5), 0, c_black, .35);

// Draw the vendor
draw_self();
