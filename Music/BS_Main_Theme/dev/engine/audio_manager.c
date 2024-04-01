#include "audio_manager.h"
#include "../object/audio_object.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"

// IMPORTANT disable compiler warning 110
#ifdef _CONSOLE
#else
#pragma disable_warning 196
#endif


// Private helper functions.
static void play_music( unsigned char *mus, unsigned char bank );
static void play_music_norepeat( unsigned char *mus, unsigned char bank );
static void play_sound( unsigned char *sfx );

void engine_audio_manager_music_game( unsigned char index )
{
	play_music_norepeat( ( unsigned char* ) game_audio_data[ index ], game_audio_bank[ index ] );
}

void engine_audio_manager_music_resume()
{
	devkit_PSGResume();
}
void engine_audio_manager_music_stop()
{
	devkit_PSGStop();
}

static void play_music( unsigned char *mus, unsigned char bank )
{
	devkit_SMS_mapROMBank( bank );
	devkit_PSGPlay( mus );
}
static void play_music_norepeat( unsigned char *mus, unsigned char bank )
{
	devkit_SMS_mapROMBank( bank );
	devkit_PSGPlayNoRepeat( mus );
}
static void play_sound( unsigned char *sfx )
{
	devkit_PSGSFXPlay( sfx, devkit_SFX_CHANNEL2() );
}