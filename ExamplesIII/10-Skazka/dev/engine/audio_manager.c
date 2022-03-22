#include "audio_manager.h"
#include "enum_manager.h"
#include "hack_manager.h"
#include "sample_manager.h"
#include "../object/audio_object.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include <stdlib.h>

const unsigned char psgInit[] =
{
	0x9F, 0xBF, 0xDF, 0xFF, 0x81, 0x00, 0xA1, 0x00, 0x00, 0xC1, 0x00
};

void engine_sound_manager_init()
{
	engine_sample_manager_init( psgInit );
}

void engine_sound_manager_play( unsigned char index )
{
	struct_hack_object *ho = &global_hack_object;
	const unsigned char *data;
	unsigned char bank;

	data = sound_sample_data[ index ];
	bank = sound_sample_bank[ index ];

	if( !ho->hack_sounds )
	{
		return;
	}

	devkit_SMS_mapROMBank( bank );
	devkit_PSGSFXPlay( ( void * ) data, devkit_SFX_CHANNEL2() );
}

void engine_sound_manager_fight()
{
	struct_hack_object *ho = &global_hack_object;
	unsigned char index;
	unsigned char value;

	index = 0;
	value = rand() % 5;

	if( !ho->hack_musics )
	{
		return;
	}

	if( 0 == value )
	{
		index = sound_type_4;
	}
	else if( 1 == value )
	{
		index = sound_type_6;
	} 
	else if( 2 == value )
	{
		index = sound_type_9;
	}
	else if( 3 == value )
	{
		index = sound_type_10;
	}
	else if( 4 == value )
	{
		index = sound_type_11;
	}

	engine_sound_manager_play( index );
}

void engine_music_manager_play( unsigned char index )
{
	struct_hack_object *ho = &global_hack_object;
	const unsigned char *data;
	unsigned char bank;

	data = music_sample_data[ index ];
	bank = music_sample_bank[ index ];

	if( !ho->hack_musics )
	{
		return;
	}

	devkit_SMS_mapROMBank( bank );
	engine_sample_manager_play( data );
}