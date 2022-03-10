#include "audio_manager.h"
#include "font_manager.h"
#include "../object/audio_object.h"
#include "../devkit/_snd_manager.h"

void engine_audio_manager_play( unsigned char index )
{
	void *sfx = ( void* ) audio_effect[ index ];
	devkit_PSGSFXPlay( sfx, devkit_SFX_CHANNEL2() );
}