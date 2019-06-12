// Inherit the parent event
event_inherited();

// Draw the title
var posX = buttonStartX + 30;
var posY = buttonStartY - buttonSpacingVertical - 30;
var scale = 5;

draw_set_halign(fa_center);
draw_text_transformed(posX, posY, "potato miners", scale, scale, 0);
draw_set_halign(fa_left);
