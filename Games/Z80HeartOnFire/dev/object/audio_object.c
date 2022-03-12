#include "audio_object.h"
#include "../banks/bank2.h"
#include "../banks/bank3.h"
#include "../banks/bank4.h"

const unsigned char *audio_sample_data[ MAX_SAMPLES ] =
{
	z80_heart_on_fire_01,
	z80_heart_on_fire_02,
	z80_heart_on_fire_03,
};

const unsigned char audio_sample_bank[ MAX_SAMPLES ] =
{
	z80_heart_on_fire_01_bank,
	z80_heart_on_fire_02_bank,
	z80_heart_on_fire_03_bank,
};