#include "audio_manager.h"
#include "../engine/hack_manager.h"
#include "../devkit/_snd_manager.h"
#include "../content/psg.h"
#include <stdlib.h>

#define mus_beat_psg			mus_beat_psg

void engine_music_manager_play()
{
	devkit_PSGPlayNoRepeat( ( unsigned char* ) mus_beat_psg );
}

void engine_sound_manager_play()
{
}
