// Place a lantern on the cursor location
if (iLantern && cursor.inRange && lanterns >= 1 && !place_meeting(x, y, obj_lantern))
{
	instance_create_layer(cursor.x, cursor.y, "Items", obj_lantern);
	
	audio_sound_pitch(snd_lantern, random_range(.5, 1.25));
	audio_play_sound(snd_lantern, 0, false);
	
	tutorialHasLanterned = true;
	lanterns--;
}
