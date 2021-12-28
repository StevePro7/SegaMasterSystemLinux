#include "audio_manager.h"
#include "../engine/hack_manager.h"
#include "../devkit/_snd_manager.h"
#include "../content/psg.h"
#include <stdlib.h>

#define mus_beat_psg			mus_beat_psg

#define sfx_cheat_psg			sfx_cheat_psg
#define sfx_right_psg			sfx_right_psg
#define sfx_wrong_psg			sfx_wrong_psg

#define SOUNDS_MAX			3

void engine_music_manager_play()
{
	struct_hack_object *ho = &global_hack_object;
	if( !ho->hack_music )
	{
		return;
	}

	devkit_PSGPlayNoRepeat( ( unsigned char* ) mus_beat_psg );
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
		devkit_PSGSFXPlay( ( unsigned char* ) sfx_cheat_psg, devkit_SFX_CHANNEL2() );
	}
	else if( 1 == sound )
	{
		devkit_PSGSFXPlay( ( unsigned char* ) sfx_right_psg, devkit_SFX_CHANNEL2() );
	}
	else
	{
		devkit_PSGSFXPlay( ( unsigned char* ) sfx_wrong_psg, devkit_SFX_CHANNEL2() );
	}
}
