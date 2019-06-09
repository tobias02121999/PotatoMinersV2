// Initialize the pause variables
isPaused = false;
menu = instance_create_layer(0, 0, "Menu", obj_menu_pause);
inputReceived = false;
instance_deactivate_object(menu);
