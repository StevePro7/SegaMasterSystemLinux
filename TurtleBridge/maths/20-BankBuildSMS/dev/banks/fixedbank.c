#include "fixedbank.h"
#include "banK21.h"
#include "banK22.h"
#include "banK23.h"
#include "banK24.h"
#include "banK25.h"
#include "banK26.h"
#include "banK27.h"
#include "banK28.h"
#include "banK29.h"
#include "bank41.h"
#include "bank42.h"
#include "bank43.h"
#include "bank44.h"
#include "bank45.h"
#include "bank46.h"
#include "bank47.h"
#include "bank48.h"
#include "bank49.h"
#include "bank51.h"
#include "bank52.h"
#include "bank53.h"
#include "bank54.h"
#include "bank55.h"
#include "bank56.h"
#include "bank57.h"
#include "bank58.h"
#include "bank59.h"
#include "bank12.h"
#include "bank13.h"

const unsigned char *riff_sample_data[] =
{
	// License to Drive	bank 28-29
	Riff_Death_Licence_01_wav_pcmenc,
	Riff_Death_Licence_02_wav_pcmenc,

	// Karate Kid	bank25-27
	Riff_Intro_Karate_01_wav_pcmenc,
	Riff_Intro_Karate_02_wav_pcmenc,
	Riff_Intro_Karate_03_wav_pcmenc,

	// Hulk Hogan	bank 21-24
	Riff_Intro_Hulk_01_wav_pcmenc,
	Riff_Intro_Hulk_02_wav_pcmenc,
	Riff_Intro_Hulk_03_wav_pcmenc,
	Riff_Intro_Hulk_04_wav_pcmenc,

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

	// Oh-li-la		bank 12-13	[x2]
	Riff__01_wav_pcmenc,
	Riff__02_wav_pcmenc,
};
const unsigned char riff_sample_bank[] =
{
	Riff_Death_Licence_01_wav_pcmenc_bank,
	Riff_Death_Licence_02_wav_pcmenc_bank,

	Riff_Intro_Karate_01_wav_pcmenc_bank,
	Riff_Intro_Karate_02_wav_pcmenc_bank,
	Riff_Intro_Karate_03_wav_pcmenc_bank,

	Riff_Intro_Hulk_01_wav_pcmenc_bank,
	Riff_Intro_Hulk_02_wav_pcmenc_bank,
	Riff_Intro_Hulk_03_wav_pcmenc_bank,
	Riff_Intro_Hulk_04_wav_pcmenc_bank,

	Riff__Title__Screen__01_wav_pcmenc_bank,
	Riff__Title__Screen__02_wav_pcmenc_bank,
	Riff__Title__Screen__03_wav_pcmenc_bank,
	Riff__Title__Screen__04_wav_pcmenc_bank,
	Riff__Title__Screen__05_wav_pcmenc_bank,
	Riff__Title__Screen__06_wav_pcmenc_bank,
	Riff__Title__Screen__07_wav_pcmenc_bank,
	Riff__Title__Screen__08_wav_pcmenc_bank,
	Riff__Title__Screen__09_wav_pcmenc_bank,

	Riff__Splash__Screen__01_wav_pcmenc_bank,
	Riff__Splash__Screen__02_wav_pcmenc_bank,
	Riff__Splash__Screen__03_wav_pcmenc_bank,
	Riff__Splash__Screen__04_wav_pcmenc_bank,
	Riff__Splash__Screen__05_wav_pcmenc_bank,
	Riff__Splash__Screen__06_wav_pcmenc_bank,
	Riff__Splash__Screen__07_wav_pcmenc_bank,
	Riff__Splash__Screen__08_wav_pcmenc_bank,
	Riff__Splash__Screen__09_wav_pcmenc_bank,

	Riff__01_wav_pcmenc_bank,
	Riff__02_wav_pcmenc_bank,
};

const unsigned char steven_object_numbers[] =
{
	17,
	34,
	51,
};

const unsigned char *steven_object_texts[] =
{
	"STEVEPRO",
	"STUDIOS",
};
// FIXED bank.
// Audio Manager.
//const unsigned char *music_object_data[] =
//{
//	animeopening_psg,
//	mastertracker_psg,
//};
//const unsigned char music_object_bank[] =
//{
//	animeopening_psg_bank,
//	mastertracker_psg_bank,
//};

// Locale Manager.
//const unsigned char my_splash_text[] = { 0x65, 0x65, 0x65 ,0x65 };
//const unsigned char *locale_object_texts[] =
//{
//	"V1.0",
//	"(C)1987",
//};

// TODO re-instate in fixed bank
// Player Manager.
//const unsigned char player_object_starts[] = { 32, 48, 64, 80, 96 };

// Level Manager.
//const unsigned char *level_object_data[] =
//{
//	level1100_txt,
//	level1101_txt,
//	level1102_txt,
//	level1103_txt,
//	level1104_txt,
//	level1105_txt,
//	level1106_txt,
//	level1107_txt,
//	level1108_txt,
//	level1109_txt,
//	level1110_txt,
//	level1111_txt,
//	level1112_txt,
//	level1113_txt,
//	level1114_txt,
//	level1115_txt,
//};
//const unsigned int level_object_size[] =
//{
//	level1100_txt_size,
//	level1101_txt_size,
//	level1102_txt_size,
//	level1103_txt_size,
//	level1104_txt_size,
//	level1105_txt_size,
//	level1106_txt_size,
//	level1107_txt_size,
//	level1108_txt_size,
//	level1109_txt_size,
//	level1110_txt_size,
//	level1111_txt_size,
//	level1112_txt_size,
//	level1113_txt_size,
//	level1114_txt_size,
//	level1115_txt_size,
//};
//const unsigned char level_object_bank[] =
//{
//	level1100_txt_bank,
//	level1101_txt_bank,
//	level1102_txt_bank,
//	level1103_txt_bank,
//	level1104_txt_bank,
//	level1105_txt_bank,
//	level1106_txt_bank,
//	level1107_txt_bank,
//	level1108_txt_bank,
//	level1109_txt_bank,
//	level1110_txt_bank,
//	level1111_txt_bank,
//	level1112_txt_bank,
//	level1113_txt_bank,
//	level1114_txt_bank,
//	level1115_txt_bank,
//};
