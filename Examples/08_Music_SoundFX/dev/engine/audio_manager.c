#include "audio_manager.h"
#include "font_manager.h"
#include "../object/audio_object.h"
#include "../devkit/_snd_manager.h"

void engine_audio_manager_play( unsigned char index )
{
	//engine_font_manager_draw_data( index, 20, 0 );
	void *sfx = ( unsigned char * ) audio_effect[ index ];
	devkit_PSGSFXPlay( sfx, devkit_SFX_CHANNEL2() );
}