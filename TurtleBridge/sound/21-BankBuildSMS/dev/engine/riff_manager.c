#include "riff_manager.h"
#include "sample_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

const unsigned char psgInit[] =
{
	0x9F, 0xBF, 0xDF, 0xFF, 0x81, 0x00, 0xA1, 0x00, 0x00, 0xC1, 0x00
};

void engine_riff_manager_init()
{
	engine_sample_manager_init( psgInit );
}

void engine_riff_manager_play( unsigned char index )
{
	const unsigned char *data;
	unsigned char bank;

	engine_riff_manager_init();
	devkit_SMS_mapROMBank( FIXED_BANK );
	data = riff_sample_data2[ index ];
	bank = riff_sample_bank2[ index ];

	devkit_SMS_mapROMBank( bank );
	engine_sample_manager_play( data );
}