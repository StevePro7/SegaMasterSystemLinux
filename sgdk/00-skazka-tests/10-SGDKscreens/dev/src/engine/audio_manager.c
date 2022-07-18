#include "audio_manager.h"
#include "enum_manager.h"
//#include "hack_manager.h"
#include "global_manager.h"

#include "audio_object.h"

#ifdef _CONSOLE
#include "_genesis.h"
#else
#include <genesis.h>
#endif

// Private helper function.
static void play_sound( const u8 index );
static void play_music( const u8 index );
static void play_audio( const u8 id, const u8 priority, const u16 channel );

void engine_audio_manager_init()
{
	unsigned char idx;
	const unsigned char *audio;
	unsigned int sized;

	// Initialize music.
	for( idx = 0; idx < MAX_MUSIC; idx++ )
	{
		audio = audio_music[ idx ];
		sized = audio_music_size[ idx ];
		SND_setPCM_XGM( BEG_SOUND + idx, audio, sized );
	}

	// Initialize effects.
	for( idx = 0; idx < MAX_SOUND; idx++ )
	{
		audio = audio_sound[ idx ];
		sized = audio_sound_size[ idx ];
		SND_setPCM_XGM( BEG_SOUND + MAX_MUSIC + idx, audio, sized );
	}
}

void engine_audio_manager_play_sound( unsigned char index )
{
	//play_sound( BEG_SOUND + MAX_MUSIC + index, 1, SOUND_PCM_CH2 );
	play_sound( index );
}

void engine_audio_manager_play_music( unsigned char index )
{
	//play_music( BEG_SOUND + index, 1, SOUND_PCM_CH1 );
	play_music( index );
}

/*
void engine_sound_manager_play( unsigned char index )
{
	//struct_hack_object *ho = &global_hack_object;
	//const unsigned char *data;
	//unsigned char bank;

	//data = sound_sample_data[ index ];
	//bank = sound_sample_bank[ index ];

	//if( !ho->hack_sounds )
	//{
	//	return;
	//}

	//devkit_SMS_mapROMBank( bank );
	//devkit_PSGSFXPlay( ( void * ) data, devkit_SFX_CHANNEL2() );
}

void engine_sound_manager_fight()
{
	//struct_hack_object *ho = &global_hack_object;
	//unsigned char index = rand() % 5;

	//if( !ho->hack_sounds )
	//{
	//	return;
	//}

	//engine_sound_manager_play( index );
}

void engine_sound_manager_kill()
{
	//struct_hack_object *ho = &global_hack_object;
	//if( !ho->hack_sounds )
	//{
	//	return;
	//}

	//devkit_PSGSFXPlay( ( void * ) sfx_death_psg, devkit_SFX_CHANNEL2() );
}

void engine_music_manager_play( unsigned char index )
{
	//struct_hack_object *ho = &global_hack_object;
	//const unsigned char *data;
	//unsigned char bank;

	//data = music_sample_data[ index ];
	//bank = music_sample_bank[ index ];

	//if( !ho->hack_musics )
	//{
	//	return;
	//}

	//devkit_SMS_mapROMBank( bank );
	//engine_sample_manager_play( data );
}
*/
void engine_music_manager_beat()
{
	play_sound( sound_type_11 );
}


static void play_sound( const u8 index )
{
	//if( !ho->hack_sounds )
	//{
	//	return;
	//}

	play_audio( BEG_SOUND + MAX_MUSIC + index, 1, SOUND_PCM_CH2 );
}

static void play_music( const u8 index )
{
	//if( !ho->hack_musics )
	//{
	//	return;
	//}

	play_audio( BEG_SOUND + index, 1, SOUND_PCM_CH1 );
}

static void play_audio( const u8 id, const u8 priority, const u16 channel )
{
	XGM_startPlayPCM( id, priority, channel );
}