#include "audio_manager.h"
#include "../devkit/_snd_manager.h"
#include "../content/psg.h"
#include <stdlib.h>

#define mus_game_psg			mus_game_psg

void engine_music_manager_play()
{
	//devkit_PSGPlayNoRepeat( ( unsigned char* ) mus_game_psg );
	devkit_PSGPlay( ( unsigned char* ) mus_game_psg );
}

void engine_sound_manager_play()
{
}
