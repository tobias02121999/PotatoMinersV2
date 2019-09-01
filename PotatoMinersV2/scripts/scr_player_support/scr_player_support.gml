// Place a lantern on the player location
if (iSupport && cursor.inRange && supports >= 1 && !place_meeting(cursor.x + 8, cursor.y + 8, obj_support) && !place_meeting(cursor.x + 8, cursor.y + 8, obj_lantern) && obj_level.tileID[cursor.gridPosX, cursor.gridPosY] <= 3)
{
	instance_create_layer(cursor.x, cursor.y, "Items", obj_support);
	
	audio_sound_pitch(snd_support, random_range(.5, 1.25));
	audio_play_sound(snd_support, 0, false);
	
	cursor.supportCountAlpha = 1;
	
	tutorialHasSupported = true;
	supports--;
}
