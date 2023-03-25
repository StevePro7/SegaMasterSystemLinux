#include "fixedbank.h"
#include "bank3.h"
#include "bank4.h"
#include "bank5.h"
#include "bank6.h"
#include "bank7.h"
#include "bank8.h"
#include "bank9.h"
#include "bank10.h"
#include "bank11.h"
#include "bank12.h"

// Locale Manager.
//const unsigned char m	y_splash_text[] = { 0x65, 0x65, 0x65 ,0x65 };
//const unsigned char *locale_object_texts[] =
//{
//	"V1.0",
//	"(C)1987",
//};

unsigned int beat_command_frame_index[] =
{
	0x0000,0x0002,0x0015,0x0016,0x0021,0x0023,0x002B,0x002C,0x003E,0x003F,0x004D,0x004E,0x005C,0x005D,0x006A,0x006B,
	0x0079,0x007A,0x0088,0x0089,0x0097,0x0098,0x00A0,0x00A2,0x00A9,0x00AA,0x00BB,0x00C4,0x00D2,0x00D3,0x00E0,0x00E1,
	0x00EF,0x00F0,0x00FD,0x00FE,0x010C,0x010D,0x0119,0x011A,0x0124,0x0125,0x012D,0x012E,0x013F,0x0140,0x014E,0x0150,
	0x015B,0x015C,0x016A,0x016B,0x016D,0x017A,0x017B,0x0187,0x018D,0x018E,0x0199,0x019A,0x01A1,0x01A2,0x01AB,0x01AC,
};

unsigned char beat_command_this_command[] =
{
	0x02,0x04,0x2C,0x04,0x02,0x01,0x81,0x01,0x81,0x01,0x81,0x01,0x81,0x01,0x81,0x01,
	0x81,0x01,0x81,0x01,0x81,0x01,0x05,0x04,0x2C,0x04,0x02,0x04,0x84,0x04,0x84,0x04,
	0x84,0x04,0x84,0x04,0x84,0x04,0x84,0x04,0x84,0x04,0x84,0x04,0x2C,0x04,0x02,0x01,
	0x81,0x01,0x41,0x01,0x02,0x42,0x02,0x04,0x84,0x04,0x84,0x04,0x84,0x04,0x84,0x04,
};


// TODO re-instate in fixed bank
// Player Manager.
//const unsigned char player_object_starts[] = { 32, 48, 64, 80, 96 };

// TODO delete this
const unsigned char *steven_text[] =
{
	"STEVEPRO01",
	"STEVEPRO02",
	"STEVEPRO03",
};
const unsigned char steven_data[] =
{
	16,32,48,64,80,96,112,128,144,160,176,192,208,224,240,255
};


// FIXED bank.
// Audio Manager.
const unsigned char *music_object_data[] =
{
	animeopening_psg,
	usas_jubaruins_psg,
	mohenjodaro_usas_psg,
	mastertracker_psg,

	mus_cont_psg,
	mus_over_psg,
	mus_beat_psg,
};
const unsigned char music_object_bank[] =
{
	animeopening_psg_bank,
	usas_jubaruins_psg_bank,
	mohenjodaro_usas_psg_bank,
	mastertracker_psg_bank,

	mus_cont_psg_bank,
	mus_over_psg_bank,
	mus_beat_psg_bank,
};

const unsigned char *sound_object_data[] =
{
	mus_death_psg,
	mus_level_psg,

	sfx_accept_psg,
	sfx_reset_psg,
	sfx_power_psg,
};
const unsigned char sound_object_bank[] =
{
	mus_death_psg_bank,
	mus_level_psg_bank,

	sfx_accept_psg_bank,
	sfx_reset_psg_bank,
	sfx_power_psg_bank,
};

const unsigned char *riff_sample_data[] =
{
	// Early
	// GnR
	Riff_Sound_Austin02_02_wav_pcmenc,
	// VH
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Point
	// Simpsons
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	// WW
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Death
	// Silicon Valley
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Simpsons - move above
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Eminem
	Riff_Sound_Austin02_02_wav_pcmenc,

	// License to Drive bank 28-29
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Commando
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// VH
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Pass
	// Austin Powers
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Intro
	// AC/DC ready
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Hulk Hogan bank 21-24
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Ultimate Warrior
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Game Over
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Title riff bank 41-49 [x9]
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Splash riff bank 51-59[x9]
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
};

const unsigned char riff_sample_bank[] =
{
	// Early
	// GnR
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	// VH
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Point
	// Simpsons
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	// WW
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Death
	// Silicon Valley
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Simpsons - move above
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Eminem
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// License to Drive bank 28-29
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Commando
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// VH
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Pass
	// Austin Powers
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Intro
	// AC/DC ready
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Hulk Hogan bank 21-24
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Ultimate Warrior
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Game Over
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Title riff bank 41-49 [x9]
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Splash riff bank 51-59[x9]
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
};

/*	OLD levels
// Level Manager.
const unsigned char *level_object_data[] =
{
	level1104_txt,
	level1103_txt,
	level1108_txt,
	level1116_txt,
	level1100_txt,
	level1101_txt,
	level1102_txt,
	level1105_txt,
	level1106_txt,
	level1107_txt,
	level1109_txt,
	level1110_txt,
	level1111_txt,
	level1112_txt,
	level1113_txt,
	level1114_txt,
	level1115_txt,
	level1117_txt,
	level1118_txt,
	level_0404_txt,
	level_0000_txt,
	level_0101_txt,
	level_0102_txt,
	level_0103_txt,
	level_0104_txt,
	//level_0808_txt,
};
const unsigned int level_object_size[] =
{
	level1104_txt_size,
	level1103_txt_size,
	level1108_txt_size,
	level1116_txt_size,
	level1100_txt_size,
	level1101_txt_size,
	level1102_txt_size,
	level1105_txt_size,
	level1106_txt_size,
	level1107_txt_size,
	level1109_txt_size,
	level1110_txt_size,
	level1111_txt_size,
	level1112_txt_size,
	level1113_txt_size,
	level1114_txt_size,
	level1115_txt_size,
	level1117_txt_size,
	level1118_txt_size,
	level_0404_txt_size,
	level_0000_txt_size,
	level_0101_txt_size,
	level_0102_txt_size,
	level_0103_txt_size,
	level_0104_txt_size,
	//level_0808_txt_size,
};
const unsigned char level_object_bank[] =
{
	level1104_txt_bank,
	level1103_txt_bank,
	level1108_txt_bank,
	level1116_txt_bank,
	level1100_txt_bank,
	level1101_txt_bank,
	level1102_txt_bank,
	level1105_txt_bank,
	level1106_txt_bank,
	level1107_txt_bank,
	level1109_txt_bank,
	level1110_txt_bank,
	level1111_txt_bank,
	level1112_txt_bank,
	level1113_txt_bank,
	level1114_txt_bank,
	level1115_txt_bank,
	level1117_txt_bank,
	level1118_txt_bank,
	level_0404_txt_bank,
	level_0000_txt_bank,
	level_0101_txt_bank,
	level_0102_txt_bank,level_0103_txt_bank,
	level_0104_txt_bank,
	//level_0808_txt_bank,
};
*/


// Level Manager.
const unsigned char *level_object_data[] =
{
	level_0101_txt,
	level_0102_txt,
	level_0103_txt,
	level_0104_txt,
	level_0105_txt,
	level_0106_txt,
	level_0107_txt,
	level_0108_txt,
	level_0201_txt,
	level_0202_txt,
	level_0203_txt,
	level_0204_txt,
	level_0205_txt,
	level_0206_txt,
	level_0207_txt,
	level_0208_txt,
	level_0301_txt,
	level_0302_txt,
	level_0303_txt,
	level_0304_txt,
	level_0305_txt,
	level_0306_txt,
	level_0307_txt,
	level_0308_txt,
	level_0401_txt,
	level_0402_txt,
	level_0403_txt,
	level_0404_txt,
	level_0405_txt,
	level_0406_txt,
	level_0407_txt,
	level_0408_txt,
	level_0501_txt,
	level_0502_txt,
	level_0503_txt,
	level_0504_txt,
	level_0505_txt,
	level_0506_txt,
	level_0507_txt,
	level_0508_txt,
};
const unsigned int level_object_size[] =
{
	level_0101_txt_size,
	level_0102_txt_size,
	level_0103_txt_size,
	level_0104_txt_size,
	level_0105_txt_size,
	level_0106_txt_size,
	level_0107_txt_size,
	level_0108_txt_size,
	level_0201_txt_size,
	level_0202_txt_size,
	level_0203_txt_size,
	level_0204_txt_size,
	level_0205_txt_size,
	level_0206_txt_size,
	level_0207_txt_size,
	level_0208_txt_size,
	level_0301_txt_size,
	level_0302_txt_size,
	level_0303_txt_size,
	level_0304_txt_size,
	level_0305_txt_size,
	level_0306_txt_size,
	level_0307_txt_size,
	level_0308_txt_size,
	level_0401_txt_size,
	level_0402_txt_size,
	level_0403_txt_size,
	level_0404_txt_size,
	level_0405_txt_size,
	level_0406_txt_size,
	level_0407_txt_size,
	level_0408_txt_size,
	level_0501_txt_size,
	level_0502_txt_size,
	level_0503_txt_size,
	level_0504_txt_size,
	level_0505_txt_size,
	level_0506_txt_size,
	level_0507_txt_size,
	level_0508_txt_size,
};
const unsigned char level_object_bank[] =
{
	level_0101_txt_bank,
	level_0102_txt_bank,
	level_0103_txt_bank,
	level_0104_txt_bank,
	level_0105_txt_bank,
	level_0106_txt_bank,
	level_0107_txt_bank,
	level_0108_txt_bank,
	level_0201_txt_bank,
	level_0202_txt_bank,
	level_0203_txt_bank,
	level_0204_txt_bank,
	level_0205_txt_bank,
	level_0206_txt_bank,
	level_0207_txt_bank,
	level_0208_txt_bank,
	level_0301_txt_bank,
	level_0302_txt_bank,
	level_0303_txt_bank,
	level_0304_txt_bank,
	level_0305_txt_bank,
	level_0306_txt_bank,
	level_0307_txt_bank,
	level_0308_txt_bank,
	level_0401_txt_bank,
	level_0402_txt_bank,
	level_0403_txt_bank,
	level_0404_txt_bank,
	level_0405_txt_bank,
	level_0406_txt_bank,
	level_0407_txt_bank,
	level_0408_txt_bank,
	level_0501_txt_bank,
	level_0502_txt_bank,
	level_0503_txt_bank,
	level_0504_txt_bank,
	level_0505_txt_bank,
	level_0506_txt_bank,
	level_0507_txt_bank,
	level_0508_txt_bank,
};


const unsigned char *extra_object_data[] =
{
	level_3001_txt,
	level_0000_txt,
};
const unsigned int extra_object_size[] =
{
	level_3001_txt_size,
	level_0000_txt_size,
};
const unsigned char extra_object_bank[] =
{
	level_3001_txt_bank,
	level_0000_txt_bank,
};