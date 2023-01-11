#include "audio_manager.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../banks/fixedbank.h"

// TODO - store the music data + bank in audio_object!

void engine_music_manager_play( unsigned char index )
{
	const unsigned char *music_data;
	unsigned char music_bank;

	devkit_SMS_mapROMBank( FIXED_BANK );
	music_data = music_object_data[ index ];
	music_bank = music_object_bank[ index ];

	devkit_SMS_mapROMBank( music_bank );
	devkit_PSGPlayNoRepeat( ( unsigned char* ) music_data );
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
