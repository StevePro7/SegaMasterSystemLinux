#include "sound_manager.h"
#include "../devkit/_snd_manager.h"
#include "../psg.h"
#include <stdlib.h>

#define SOUND1_PSG			sound1_psg
#define STEVE_FX_PSG		sfx_stevepro_psg
#define	NEW_FILE_PSG		new_file_psg

void engine_music_manager_play()
{
}

void engine_sound_manager_play()
{
	void *sfx;
	sfx = ( unsigned char* ) NEW_FILE_PSG;
	devkit_PSGSFXPlay( sfx, devkit_SFX_CHANNEL2() );
}
