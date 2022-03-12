#include "audio_manager.h"
#include "../object/audio_object.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"

void engine_audio_manager_play( unsigned char index )
{
	void *data;
	unsigned char bank;

	data = ( void* ) audio_sample_data[ index ];
	bank = audio_sample_bank[ index ];

	devkit_SMS_mapROMBank( bank );
	devkit_PSGPlayNoRepeat( data );
}