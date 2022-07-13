#include "audio_object.h"
#include "resources.h"

const unsigned char *audio_effect[ 13 ] =
{
	sfx_sound_type_1,
	sfx_sound_type_2,
	sfx_sound_type_3,
	sfx_sound_type_4,
	sfx_sound_type_5,		// index 4 = sfx_right
	sfx_sound_type_6,		// index 5 = sfx_wrong
	sfx_sound_type_7,		// index 6 = sfx_cheat
	sfx_sound_type_8,
	sfx_sound_type_9,
	sfx_sound_type_10,
	sfx_sound_type_11,
	sfx_sound_type_12,
	sfx_sound_type_13,
};
const unsigned int audio_effect_size[ 13 ] =
{
	2304,
	2048,
	2048,
	3072,
	6912,
	8448,
	8448,
	3840,
	12800,
	3072,
	199936,
	49408,
	14080,
};