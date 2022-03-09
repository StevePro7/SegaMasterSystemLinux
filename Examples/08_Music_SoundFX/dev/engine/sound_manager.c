#include "sound_manager.h"
#include "../devkit/_snd_manager.h"
#include "../engine/hack_manager.h"
#include "../psg.h"
#include <stdlib.h>

#define MUSIC_PSG			music_psg
#define PHONE_PSG			phone_psg
#define SOUND1_PSG			sound1_psg
#define SOUND2_PSG			sound2_psg
#define SOUND3_PSG			sound3_psg
#define SOUND4_PSG			m_gover_psg
#define SOUND5_PSG			m_title_psg
#define SOUNDS_MAX			5

void engine_music_manager_play()
{
	struct_hack_object *ho = &global_hack_object;
	if( !ho->hack_music )
	{
		return;
	}

	devkit_PSGPlayNoRepeat( ( unsigned char* ) PHONE_PSG );
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
		sfx = ( unsigned char* ) SOUND5_PSG;
	}
	else if( 1 == sound )
	{
		sfx = ( unsigned char* ) SOUND5_PSG;
	}
	else
	{
		sfx = ( unsigned char* ) SOUND5_PSG;
	}

	devkit_PSGSFXPlay( sfx, devkit_SFX_CHANNEL2() );
}
