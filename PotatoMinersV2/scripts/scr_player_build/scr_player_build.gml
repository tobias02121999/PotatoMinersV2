// Place a refined stone block
var tile = obj_level.tileID[cursor.gridPosX, cursor.gridPosY];

if (iBuild && cursor.inRange && tile == 4 && !place_meeting(cursor.x, cursor.y, obj_vendor))
{
	with (obj_level)
		scr_level_placeTile(other.cursor.gridPosX, other.cursor.gridPosY, 5, 5);

	var posX = cursor.gridPosX * obj_level.tileSize;
	var posY = cursor.gridPosY * obj_level.tileSize;
	
	instance_create_layer(posX, posY, "Items", obj_wall);
		
	audio_sound_pitch(snd_wall, random_range(.5, 1.25));
	audio_play_sound(snd_wall, 0, false);
		
	tutorialHasBuilt = true;
	pickaxeRotation = pickaxeRotationRange;
}
