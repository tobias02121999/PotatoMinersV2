// Display the tutorial messages
var posX = view_get_xport(view) + 320;
var posY = 50;
var scale = 6;

draw_sprite_ext(spr_tutorial_message, 0, posX, posY, scale, scale, 0, c_white, 1);

var text = "";
var textOffsetX = 12;
var textOffsetY = 10;

switch (target.tutorialStage)
{
	// Introduction
	case 0:
		switch (target.inputScheme)
		{
			// Mouse + keyboard
			case 1:
				text = "welcome to potato\nminers. in this short\ntutorial you will learn\nthe basics of the\ngame.";
				break;
				
			// Gamepad
			case 2:
				text = "welcome to potato\nminers. in this short\ntutorial you will learn\nthe basics of the\ngame.";
				break;
		}
		break;
	
	// Movement
	case 1:
		switch (target.inputScheme)
		{
			// Mouse + keyboard
			case 1:
				text = "use the wasd keys to\nmove around.";
				break;
				
			// Gamepad
			case 2:
				text = "use the left analog\nstick to move around.";
				break;
		}
		break;
		
	// Mining
	case 2:
		switch (target.inputScheme)
		{
			// Mouse + keyboard
			case 1:
				text = "hover over a stone\nblock with the cursor\nby moving the mouse\nand press the left\nmouse button to mine\nit. note that the\ncursor must be within\nrange of the potato.";
				break;
				
			// Gamepad
			case 2:
				text = "hover over a stone\nblock with the cursor\nusing the right analog\nstick and press rt to\nmine it. note that the\ncursor must be within\nrange of the potato.";
				break;
		}
		break;
		
	// Support
	case 3:
		switch (target.inputScheme)
		{
			// Mouse + keyboard
			case 1:
				text = "whenever you break\nblocks red danger\nzones will appear. this\nmeans the block will\ncollapse and spread\nmore danger zones\naround it if not taken\ncare of. hover over\nthe red square and\nplace a support by\npressing the shift key.\nsupports remove danger\nzones within a 3x3\narea but only once at\nthe time of placement.";
				break;
				
			// Gamepad
			case 2:
				text = "whenever you break\nblocks red danger\nzones will appear. this\nmeans the block will\ncollapse and spread\nmore danger zones\naround it if not taken\ncare of. hover over\nthe red square and\nplace a support by\npressing the rb button.\nsupports remove danger\nzones within a 3x3\narea but only once at\nthe time of placement.";
				break;
		}
		break;
		
	// Building
	case 4:
		switch (target.inputScheme)
		{
			// Mouse + keyboard
			case 1:
				text = "your materials are\ndisplayed in the bottom\nleft corner of the\nscreen. wall blocks can\nbe placed at the cost\nof stone at the cursor\nlocation by pressing\nthe right mouse button.\nplacing it on top of a\nstone block will only\ncost you 1 stone while\nan empty space will\ncost you 2 stone. note\nthat wall blocks cannot\nbe broken. place a wall\nblock to continue.";
				break;
				
			// Gamepad
			case 2:
				text = "your materials are\ndisplayed in the bottom\nleft corner of the\nscreen. wall blocks can\nbe placed at the cost\nof stone at the cursor\nlocation by pressing\nthe lt button.\nplacing it on top of a\nstone block will only\ncost you 1 stone while\nan empty space will\ncost you 2 stone. note\nthat wall blocks cannot\nbe broken. place a wall\nblock to continue.";
				break;
		}
		break;
		
	// Sell
	case 5:
		switch (target.inputScheme)
		{
			// Mouse + keyboard
			case 1:
				text = "i have given you a\nbunch of materials as\nyou can see in the\nbottom left corner of\nthe screen. sell your\ncollected materials for\ncoin by hovering over\nthe stone slab with the\ncoin on it and\npressing the left mouse\nbutton. you will see\ncoin being added to\nyour inventory in the\nbottom right corner of\nthe screen.";
				break;
				
			// Gamepad
			case 2:
				text = "i have given you a\nbunch of materials as\nyou can see in the\nbottom left corner of\nthe screen. sell your\ncollected materials for\ncoin by hovering over\nthe stone slab with the\ncoin on it and\npressing the rt button.\nyou will see\ncoin being added to\nyour inventory in the\nbottom right corner of\nthe screen.";
				break;
		}
		break;
		
	// Buy
	case 6:
		switch (target.inputScheme)
		{
			// Mouse + keyboard
			case 1:
				text = "the other stone slabs\nor vendors are used\nfor purchasing new\nitems and upgrades\nsuch as supports and\nlanterns. your current\namount of items can be\nseen in the bottom\nright corner for the\nscreen. buy a set of\nlanterns by hovering\nover the vendor with\nthe lantern icon on it\nand pressing the left\nmouse button.";
				break;
				
			// Gamepad
			case 2:
				text = "the other stone slabs\nor vendors are used\nfor purchasing new\nitems and upgrades\nsuch as supports and\nlanterns. your current\namount of items can be\nseen in the bottom\nright corner for the\nscreen. buy a set of\nlanterns by hovering\nover the vendor with\nthe lantern icon on it\nand pressing the rt\nbutton.";
				break;
		}
		break;
		
	// Lantern
	case 7:
		switch (target.inputScheme)
		{
			// Mouse + keyboard
			case 1:
				text = "place a lantern at the\ncursor location by\npressing the control\nkey.";
				break;
				
			// Gamepad
			case 2:
				text = "place a lantern at the\ncursor location by\npressing the lb\nbutton.";
				break;
		}
		break;
		
	// Upgrades
	case 8:
		switch (target.inputScheme)
		{
			// Mouse + keyboard
			case 1:
				text = "you can buy 2 different\ntypes of upgrades.\nsight upgrades and\npickaxe upgrades. sight\nupgrades increase the\nvisibility around the\nplayer and the\ninteraction range of\nthe cursor. pickaxe\nupgrades enable the\nplayer to mine better\nresources.";
				break;
				
			// Gamepad
			case 2:
				text = "you can buy 2 different\ntypes of upgrades.\nsight upgrades and\npickaxe upgrades. sight\nupgrades increase the\nvisibility around the\nplayer and the\ninteraction range of\nthe cursor. pickaxe\nupgrades enable the\nplayer to mine better\nresources.";
				break;
		}
		break;
		
	// Cheat sheet
	case 9:
		switch (target.inputScheme)
		{
			// Mouse + keyboard
			case 1:
				text = "your current upgrade\nlevels for your sight\nand pickaxe can be\nseen at the top left\ncorner of the screen.\nto know what resource\nrequires what level of\npickaxe you can use\nthe cheat sheet. hold\nthe tab key to view\nthe cheat sheet.";
				break;
				
			// Gamepad
			case 2:
				text = "your current upgrade\nlevels for your sight\nand pickaxe can be\nseen at the top left\ncorner of the screen.\nto know what resource\nrequires what level of\npickaxe you can use\nthe cheat sheet. hold\nthe select button to\nview the cheat sheet.";
				break;
		}
		break;
	
	// Treasure
	case 10:
		switch (target.inputScheme)
		{
			// Mouse + keyboard
			case 1:
				text = "";
				break;
				
			// Gamepad
			case 2:
				text = "";
				break;
		}
		break;
}

draw_text(posX + textOffsetX, posY + textOffsetY, text);
