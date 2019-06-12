// Place a lantern on the player location
if (iSupport && cursor.inRange && supports >= 1 && !place_meeting(cursor.x, cursor.y, obj_support))
{
	instance_create_layer(cursor.x, cursor.y, "Items", obj_support);
	
	audio_sound_pitch(snd_support, random_range(.5, 1.25));
	audio_play_sound(snd_support, 0, false);
	
	tutorialHasSupported = true;
	supports--;
}
