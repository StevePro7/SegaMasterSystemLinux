#include "fixedbank.h"
#include "bank3.h"
#include "bank4.h"
#include "bank5.h"
#include "bank6.h"
#include "bank7.h"
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

	mus_death_psg,
	mus_beat_psg,
	mus_cont_psg,
	mus_level_psg,
	mus_over_psg,
};
const unsigned char music_object_bank[] =
{
	animeopening_psg_bank,
	usas_jubaruins_psg_bank,
	mohenjodaro_usas_psg_bank,
	mastertracker_psg_bank,

	mus_death_psg_bank,
	mus_beat_psg_bank,
	mus_cont_psg_bank,
	mus_level_psg_bank,
	mus_over_psg_bank,
};

const unsigned char *sound_object_data[] =
{
	sfx_accept_psg,
	sfx_reset_psg,
	sfx_power_psg,
};
const unsigned char sound_object_bank[] =
{
	sfx_accept_psg_bank,
	sfx_reset_psg_bank,
	sfx_power_psg_bank,
};

/*
const unsigned char *riff_sample_data2[] =
{
	// Early
	// GnR
	Riff_Sound_Youza40_01_wav_pcmenc,
	// VH
	Riff_Sound_VHshriek_01_wav_pcmenc,
	Riff_Sound_VHjump02_01_wav_pcmenc,
	Riff_Sound_VHjump02_02_wav_pcmenc,


	// Point
	// Simpsons
	Riff_Sound_Excellent10_01_wav_pcmenc,
	Riff_Sound_Excellent20_01_wav_pcmenc,
	Riff_Sound_Excellent30_01_wav_pcmenc,
	Riff_Sound_Excellent40_01_wav_pcmenc,
	Riff_Sound_Excellent50_01_wav_pcmenc,
	// WW
	Riff_Sound_Wayne_01_wav_pcmenc,


	// Death
	// Silicon Valley
	Riff_Sound_Silicon01_01_wav_pcmenc,
	Riff_Sound_Silicon02_01_wav_pcmenc,
	Riff_Sound_Silicon03_01_wav_pcmenc,

	// Simpsons - move above
	Riff_Sound_SimpsonsSucked_01_wav_pcmenc,

	// Eminem
	Riff_Sound_Eminem_01_wav_pcmenc,

	// License to Drive	bank 28-29
	Riff_Death_Licence_01_wav_pcmenc,
	Riff_Death_Licence_02_wav_pcmenc,

	// Commando
	Riff_Sound_Commando_01_wav_pcmenc,
	Riff_Sound_Commando_02_wav_pcmenc,

	// VH
	Riff_Sound_VHdoctor_01_wav_pcmenc,
	Riff_Sound_VHdoctor_02_wav_pcmenc,
	Riff_Sound_VHdoctor_03_wav_pcmenc,


	// Pass
	// Austin Powers
	Riff_Sound_Austin01_01_wav_pcmenc,
	Riff_Sound_Austin02_01_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin03_01_wav_pcmenc,
	Riff_Sound_Austin03_02_wav_pcmenc,


	// Intro
	// AC/DC ready
	Riff_Intro_ACDC_01_wav_pcmenc,
	Riff_Intro_ACDC_02_wav_pcmenc,

	// Hulk Hogan	bank 21-24
	Riff_Intro_Hulk_01_wav_pcmenc,
	Riff_Intro_Hulk_02_wav_pcmenc,
	Riff_Intro_Hulk_03_wav_pcmenc,
	Riff_Intro_Hulk_04_wav_pcmenc,

	// Ultimate Warrior
	Riff_Intro_Ultimate_01_wav_pcmenc,
	Riff_Intro_Ultimate_02_wav_pcmenc,
	Riff_Intro_Ultimate_03_wav_pcmenc,
	Riff_Intro_Ultimate_04_wav_pcmenc,


	// Game Over
	Riff_Sound_Over_01_wav_pcmenc,
	Riff_Sound_Over_02_wav_pcmenc,


	// Title riff	bank 41-49	[x9]
	Riff__Title__Screen__01_wav_pcmenc,
	Riff__Title__Screen__02_wav_pcmenc,
	Riff__Title__Screen__03_wav_pcmenc,
	Riff__Title__Screen__04_wav_pcmenc,
	Riff__Title__Screen__05_wav_pcmenc,
	Riff__Title__Screen__06_wav_pcmenc,
	Riff__Title__Screen__07_wav_pcmenc,
	Riff__Title__Screen__08_wav_pcmenc,
	Riff__Title__Screen__09_wav_pcmenc,
	// Splash riff	bank 51-59	[x9]
	Riff__Splash__Screen__01_wav_pcmenc,
	Riff__Splash__Screen__02_wav_pcmenc,
	Riff__Splash__Screen__03_wav_pcmenc,
	Riff__Splash__Screen__04_wav_pcmenc,
	Riff__Splash__Screen__05_wav_pcmenc,
	Riff__Splash__Screen__06_wav_pcmenc,
	Riff__Splash__Screen__07_wav_pcmenc,
	Riff__Splash__Screen__08_wav_pcmenc,
	Riff__Splash__Screen__09_wav_pcmenc,
};

const unsigned char riff_sample_bank2[] =
{
	// Early
	// GnR
	Riff_Sound_Youza40_01_wav_pcmenc_bank,
	// VH
	Riff_Sound_VHshriek_01_wav_pcmenc_bank,
	Riff_Sound_VHjump02_01_wav_pcmenc_bank,
	Riff_Sound_VHjump02_02_wav_pcmenc_bank,


	// Point
	// Simpsons
	Riff_Sound_Excellent10_01_wav_pcmenc_bank,
	Riff_Sound_Excellent20_01_wav_pcmenc_bank,
	Riff_Sound_Excellent30_01_wav_pcmenc_bank,
	Riff_Sound_Excellent40_01_wav_pcmenc_bank,
	Riff_Sound_Excellent50_01_wav_pcmenc_bank,
	// WW
	Riff_Sound_Wayne_01_wav_pcmenc_bank,


	// Death
	// Silicon Valley
	Riff_Sound_Silicon01_01_wav_pcmenc_bank,
	Riff_Sound_Silicon02_01_wav_pcmenc_bank,
	Riff_Sound_Silicon03_01_wav_pcmenc_bank,

	// Simpsons - move above
	Riff_Sound_SimpsonsSucked_01_wav_pcmenc_bank,

	// Eminem
	Riff_Sound_Eminem_01_wav_pcmenc_bank,

	// License to Drive	bank 28-29
	Riff_Death_Licence_01_wav_pcmenc_bank,
	Riff_Death_Licence_02_wav_pcmenc_bank,

	// Commando
	Riff_Sound_Commando_01_wav_pcmenc_bank,
	Riff_Sound_Commando_02_wav_pcmenc_bank,

	// VH
	Riff_Sound_VHdoctor_01_wav_pcmenc_bank,
	Riff_Sound_VHdoctor_02_wav_pcmenc_bank,
	Riff_Sound_VHdoctor_03_wav_pcmenc_bank,


	// Pass
	// Austin Powers
	Riff_Sound_Austin01_01_wav_pcmenc_bank,
	Riff_Sound_Austin02_01_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin03_01_wav_pcmenc_bank,
	Riff_Sound_Austin03_02_wav_pcmenc_bank,


	// Intro
	// AC/DC ready
	Riff_Intro_ACDC_01_wav_pcmenc_bank,
	Riff_Intro_ACDC_02_wav_pcmenc_bank,

	// Hulk Hogan	bank 21-24
	Riff_Intro_Hulk_01_wav_pcmenc_bank,
	Riff_Intro_Hulk_02_wav_pcmenc_bank,
	Riff_Intro_Hulk_03_wav_pcmenc_bank,
	Riff_Intro_Hulk_04_wav_pcmenc_bank,

	// Ultimate Warrior
	Riff_Intro_Ultimate_01_wav_pcmenc_bank,
	Riff_Intro_Ultimate_02_wav_pcmenc_bank,
	Riff_Intro_Ultimate_03_wav_pcmenc_bank,
	Riff_Intro_Ultimate_04_wav_pcmenc_bank,


	// Game Over
	Riff_Sound_Over_01_wav_pcmenc_bank,
	Riff_Sound_Over_02_wav_pcmenc_bank,


	// Title riff	bank 41-49	[x9]
	Riff__Title__Screen__01_wav_pcmenc_bank,
	Riff__Title__Screen__02_wav_pcmenc_bank,
	Riff__Title__Screen__03_wav_pcmenc_bank,
	Riff__Title__Screen__04_wav_pcmenc_bank,
	Riff__Title__Screen__05_wav_pcmenc_bank,
	Riff__Title__Screen__06_wav_pcmenc_bank,
	Riff__Title__Screen__07_wav_pcmenc_bank,
	Riff__Title__Screen__08_wav_pcmenc_bank,
	Riff__Title__Screen__09_wav_pcmenc_bank,
	// Splash riff	bank 51-59	[x9]
	Riff__Splash__Screen__01_wav_pcmenc_bank,
	Riff__Splash__Screen__02_wav_pcmenc_bank,
	Riff__Splash__Screen__03_wav_pcmenc_bank,
	Riff__Splash__Screen__04_wav_pcmenc_bank,
	Riff__Splash__Screen__05_wav_pcmenc_bank,
	Riff__Splash__Screen__06_wav_pcmenc_bank,
	Riff__Splash__Screen__07_wav_pcmenc_bank,
	Riff__Splash__Screen__08_wav_pcmenc_bank,
	Riff__Splash__Screen__09_wav_pcmenc_bank,
};
*/
const unsigned char *riff_sample_data[] =
{
	// Simpsons
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Austin Powers
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Silicon Valley
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Game Over
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// AC/DC ready
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Ultimate Warrior
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// License to Drive	bank 28-29
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Hulk Hogan	bank 21-24
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// VH
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Simpsons - move above
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Commando
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// GnR
	Riff_Sound_Austin02_02_wav_pcmenc,

	// WW
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Eminem
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Title riff	bank 41-49	[x9]
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,

	// Splash riff	bank 51-59	[x9]
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
	// Simpsons
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Austin Powers
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Silicon Valley
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Game Over
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// AC/DC ready
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Ultimate Warrior
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// License to Drive	bank 28-29
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Hulk Hogan	bank 21-24
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// VH
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Simpsons - move above
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Commando
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// GnR
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// WW
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Eminem
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Title
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,

	// Splash
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
	level_0101_txt,
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
	level_0101_txt_size,
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
	level_0101_txt_bank,
	//level_0808_txt_bank,
};
