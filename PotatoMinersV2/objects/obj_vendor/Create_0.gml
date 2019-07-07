// Initialize the vendor variables
activated = false;

vendorScript[0] = noone;

cost[0] = 0;

selected = false;
player = obj_player;
tutorialUnlockStage = -1;

vendorDialog = instance_create_layer(x + 8, y - 28, "UI", obj_vendorDialog);

vendorMenu = instance_create_layer(x + 7.5, y - 14, "UI", obj_vendorMenu);
vendorMenu.vendor = self.id;

multiplyCost = false;

image_xscale = .5;
image_yscale = .5;
