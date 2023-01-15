#include "audio_manager.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../banks/fixedbank.h"
#include <stdlib.h>

// Global variable.
struct_audio_object global_audio_object;

void engine_audio_manager_init()
{
	struct_audio_object *ao = &global_audio_object;
	ao->music_data = NULL;
	ao->music_bank = 0;
}

void engine_music_manager_play( unsigned char index )
{
	struct_audio_object *ao = &global_audio_object;
	//const unsigned char *music_data;
	//unsigned char music_bank;

	devkit_SMS_mapROMBank( FIXED_BANK );
	ao->music_data = ( unsigned char* ) music_object_data[ index ];
	ao->music_bank = music_object_bank[ index ];

	devkit_SMS_mapROMBank( ao->music_bank );
	devkit_PSGPlayNoRepeat( ( unsigned char* ) ao->music_data );
}

void engine_audio_manager_update()
{
	struct_audio_object *ao = &global_audio_object;
	if( 0 != ao->music_bank )
	{
		//devkit_SMS_mapROMBank( ao->music_bank );
		devkit_PSGFrame();
	}


	devkit_PSGSFXFrame();
}

//void engine_music_manager_play()
//{
//	//devkit_PSGPlay( ( unsigned char* ) mus_game_psg );
//	//devkit_PSGPlayNoRepeat( ( unsigned char* ) mus_game_psg );
//}
//
//void engine_sound_manager_play()
//{
//}
