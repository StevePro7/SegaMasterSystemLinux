#include "sound_manager.h"
#include "../devkit/_snd_manager.h"
#include "../engine/hack_manager.h"
#include "../psg.h"
#include <stdlib.h>

#define MUSIC_PSG			music_psg
#define SOUND1_PSG			sound1_psg
#define SOUND2_PSG			sound2_psg
#define SOUND3_PSG			sound3_psg
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

	if( !ho->hack_sound )
	{
		return;
	}

	sound = rand() % SOUNDS_MAX;
	if( 0 == sound )
	{
		devkit_PSGSFXPlay( ( unsigned char* ) SOUND1_PSG, devkit_SFX_CHANNEL2() );
	}
	else if( 1 == sound )
	{
		devkit_PSGSFXPlay( ( unsigned char* ) SOUND2_PSG, devkit_SFX_CHANNEL2() );
	}
	else
	{
		devkit_PSGSFXPlay( ( unsigned char* ) SOUND3_PSG, devkit_SFX_CHANNEL2() );
	}
}
