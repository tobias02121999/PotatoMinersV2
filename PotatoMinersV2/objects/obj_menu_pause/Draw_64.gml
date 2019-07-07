// Inherit the parent event
event_inherited();

// Draw the title
var posX = buttonStartX + 60;
var posY = buttonStartY - buttonSpacingVertical - 60;
var scale = 10;

draw_set_halign(fa_center);
draw_text_transformed(posX, posY, "potato miners", scale, scale, 0);
draw_set_halign(fa_left);
