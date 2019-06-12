// Play the audio corresponding to the current room
switch (room)
{
	case rm_menu_main:
		if (audio_is_playing(snd_game))
			audio_stop_sound(snd_game);
			
		if (!audio_is_playing(snd_menu))
			audio_play_sound(snd_menu, 0, true);
		break;
		
	case rm_game_large:
		if (audio_is_playing(snd_menu))
			audio_stop_sound(snd_menu);
			
		if (!audio_is_playing(snd_game))
			audio_play_sound(snd_game, 0, true);
		break;
		
	case rm_game_medium:
		if (audio_is_playing(snd_menu))
			audio_stop_sound(snd_menu);
			
		if (!audio_is_playing(snd_game))
			audio_play_sound(snd_game, 0, true);
		break;
		
	case rm_game_small:
		if (audio_is_playing(snd_menu))
			audio_stop_sound(snd_menu);
			
		if (!audio_is_playing(snd_game))
			audio_play_sound(snd_game, 0, true);
		break;
		
	case rm_tutorial:
		if (audio_is_playing(snd_menu))
			audio_stop_sound(snd_menu);
			
		if (!audio_is_playing(snd_game))
			audio_play_sound(snd_game, 0, true);
		break;
}
