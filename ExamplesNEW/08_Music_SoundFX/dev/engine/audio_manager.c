#include "audio_manager.h"
#include "../devkit/_snd_manager.h"
#include "../engine/hack_manager.h"
#include "../content/psg.h"
#include <stdlib.h>

#define MUSIC_PSG			mus_beat_psg
#define SOUND1_PSG			sfx_cheat_psg
#define SOUND2_PSG			sfx_right_psg
#define SOUND3_PSG			sfx_wrong_psg
#define SOUNDS_MAX			3

void engine_music_manager_play()
{
	struct_hack_object *ho = &global_hack_object;
	if( !ho->hack_music )
	{
		return;
	}

	devkit_PSGPlayNoRepeat( ( unsigned char* ) MUSIC_PSG );
}

void engine_sound_manager_play()
{
	struct_hack_object *ho = &global_hack_object;
	unsigned char sound;
	void *sfx;

	if( !ho->hack_sound )
	{
		return;
	}

	sound = rand() % SOUNDS_MAX;
	if( 0 == sound )
	{
		sfx = ( unsigned char* ) SOUND1_PSG;
	}
	else if( 1 == sound )
	{
		sfx = ( unsigned char* ) SOUND2_PSG;
	}
	else
	{
		sfx = ( unsigned char* ) SOUND3_PSG;
	}

	devkit_PSGSFXPlay( sfx, devkit_SFX_CHANNEL2() );
}
