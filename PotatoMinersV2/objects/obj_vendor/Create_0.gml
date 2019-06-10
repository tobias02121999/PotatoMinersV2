// Initialize the vendor variables
activated = false;
vendorScript = noone;
cost = 0;
selected = false;
vendorDialog = instance_create_layer(x + (sprite_width / 2), (y + (sprite_width / 2)) - 10, "UI", obj_vendorDialog);
player = obj_player;
tutorialUnlockStage = -1;
