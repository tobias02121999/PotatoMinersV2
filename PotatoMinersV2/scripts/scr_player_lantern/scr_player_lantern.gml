// Place a lantern on the cursor location
if (iLantern && cursor.inRange && lanterns >= 1 && !place_meeting(cursor.x + 8, cursor.y + 8, obj_lantern) && !place_meeting(cursor.x + 8, cursor.y + 8, obj_support) && obj_level.tileID[cursor.gridPosX, cursor.gridPosY] <= 3)
{
	instance_create_layer(cursor.x, cursor.y, "Items", obj_lantern);
	
	audio_sound_pitch(snd_lantern, random_range(.5, 1.25));
	audio_play_sound(snd_lantern, 0, false);
	
	tutorialHasLanterned = true;
	lanterns--;
}
