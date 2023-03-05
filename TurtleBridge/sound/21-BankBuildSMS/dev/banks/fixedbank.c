#include "fixedbank.h"
#include "bank2.h"
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
#include "bank13.h"
#include "bank14.h"
#include "bank15.h"
#include "bank16.h"
#include "bank17.h"
#include "bank18.h"
#include "bank19.h"
#include "banK20.h"
#include "banK21.h"
#include "banK22.h"
#include "banK23.h"
#include "banK24.h"
#include "banK25.h"
#include "banK26.h"
#include "banK27.h"
#include "banK28.h"
#include "banK29.h"
#include "banK30.h"
#include "bank31.h"
#include "bank32.h"
#include "bank33.h"
#include "bank34.h"
#include "bank35.h"
#include "bank36.h"
#include "bank37.h"
#include "bank38.h"
#include "bank39.h"
#include "bank40.h"
#include "bank41.h"
#include "bank42.h"
#include "bank43.h"
#include "bank44.h"
#include "bank45.h"
#include "bank46.h"
#include "bank47.h"
#include "bank48.h"
#include "bank49.h"
#include "bank50.h"
#include "bank51.h"
#include "bank52.h"
#include "bank53.h"
#include "bank54.h"
#include "bank55.h"
#include "bank56.h"
#include "bank57.h"
#include "bank58.h"
#include "bank59.h"
#include "bank60.h"
#include "bank61.h"
#include "bank62.h"

const unsigned char *riff_sample_data[] =
{
	// Simpsons
	Riff_Sound_Excellent10_01_wav_pcmenc,
	Riff_Sound_Excellent20_01_wav_pcmenc,
	Riff_Sound_Excellent30_01_wav_pcmenc,
	Riff_Sound_Excellent40_01_wav_pcmenc,
	Riff_Sound_Excellent50_01_wav_pcmenc,

	// Austin Powers
	Riff_Sound_Austin01_01_wav_pcmenc,
	Riff_Sound_Austin02_01_wav_pcmenc,
	Riff_Sound_Austin02_02_wav_pcmenc,
	Riff_Sound_Austin03_01_wav_pcmenc,
	Riff_Sound_Austin03_02_wav_pcmenc,

	// Silicon Valley
	Riff_Sound_Silicon01_01_wav_pcmenc,
	Riff_Sound_Silicon02_01_wav_pcmenc,
	Riff_Sound_Silicon03_01_wav_pcmenc,

	// Game Over
	Riff_Sound_Over_01_wav_pcmenc,
	Riff_Sound_Over_02_wav_pcmenc,

	// AC/DC ready
	Riff_Intro_ACDC_01_wav_pcmenc,
	Riff_Intro_ACDC_02_wav_pcmenc,

	// Ultimage Warrior
	Riff_Intro_Ultimate_01_wav_pcmenc,
	Riff_Intro_Ultimate_02_wav_pcmenc,
	Riff_Intro_Ultimate_03_wav_pcmenc,
	Riff_Intro_Ultimate_04_wav_pcmenc,

	// Wayne World	 bank 20
	//Riff_Sound_Wayne_01_wav_pcmenc,

	// Eminem	 bank 30
	//Riff_Sound_Eminem_01_wav_pcmenc,

	// License to Drive	bank 28-29
	Riff_Death_Licence_01_wav_pcmenc,
	Riff_Death_Licence_02_wav_pcmenc,

	// Hulk Hogan	bank 21-24
	Riff_Intro_Hulk_01_wav_pcmenc,
	Riff_Intro_Hulk_02_wav_pcmenc,
	Riff_Intro_Hulk_03_wav_pcmenc,
	Riff_Intro_Hulk_04_wav_pcmenc,

	// VH
	Riff_Sound_VHshriek_01_wav_pcmenc,
	Riff_Sound_VHjump02_01_wav_pcmenc,
	Riff_Sound_VHjump02_02_wav_pcmenc,
	Riff_Sound_VHdoctor_01_wav_pcmenc,
	Riff_Sound_VHdoctor_02_wav_pcmenc,
	Riff_Sound_VHdoctor_03_wav_pcmenc,

	// Simpsons - move above
	Riff_Sound_SimpsonsSucked_01_wav_pcmenc,

	// Commando
	Riff_Sound_Commando_01_wav_pcmenc,
	Riff_Sound_Commando_02_wav_pcmenc,

	// GnR
	Riff_Sound_Youza40_01_wav_pcmenc,

	// WW
	Riff_Sound_Wayne_01_wav_pcmenc,

	// Eminem
	Riff_Sound_Eminem_01_wav_pcmenc,

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
const unsigned char riff_sample_bank[] =
{
	// Simpsons
	Riff_Sound_Excellent10_01_wav_pcmenc_bank,
	Riff_Sound_Excellent20_01_wav_pcmenc_bank,
	Riff_Sound_Excellent30_01_wav_pcmenc_bank,
	Riff_Sound_Excellent40_01_wav_pcmenc_bank,
	Riff_Sound_Excellent50_01_wav_pcmenc_bank,

	// Austin Powers
	Riff_Sound_Austin01_01_wav_pcmenc_bank,
	Riff_Sound_Austin02_01_wav_pcmenc_bank,
	Riff_Sound_Austin02_02_wav_pcmenc_bank,
	Riff_Sound_Austin03_01_wav_pcmenc_bank,
	Riff_Sound_Austin03_02_wav_pcmenc_bank,

	// Silicon Valley
	Riff_Sound_Silicon01_01_wav_pcmenc_bank,
	Riff_Sound_Silicon02_01_wav_pcmenc_bank,
	Riff_Sound_Silicon03_01_wav_pcmenc_bank,

	// Game Over
	Riff_Sound_Over_01_wav_pcmenc_bank,
	Riff_Sound_Over_02_wav_pcmenc_bank,

	// AC/DC ready
	Riff_Intro_ACDC_01_wav_pcmenc_bank,
	Riff_Intro_ACDC_02_wav_pcmenc_bank,

	// Ultimage Warrior
	Riff_Intro_Ultimate_01_wav_pcmenc_bank,
	Riff_Intro_Ultimate_02_wav_pcmenc_bank,
	Riff_Intro_Ultimate_03_wav_pcmenc_bank,
	Riff_Intro_Ultimate_04_wav_pcmenc_bank,

	// Wayne World	 bank 20
	//Riff_Sound_Wayne_01_wav_pcmenc_bank,

	// Eminem	 bank 30
	//Riff_Sound_Eminem_01_wav_pcmenc_bank,

	// License to Drive	bank 28-29
	Riff_Death_Licence_01_wav_pcmenc_bank,
	Riff_Death_Licence_02_wav_pcmenc_bank,

	// Hulk Hogan	bank 21-24
	Riff_Intro_Hulk_01_wav_pcmenc_bank,
	Riff_Intro_Hulk_02_wav_pcmenc_bank,
	Riff_Intro_Hulk_03_wav_pcmenc_bank,
	Riff_Intro_Hulk_04_wav_pcmenc_bank,

	// VH
	Riff_Sound_VHshriek_01_wav_pcmenc_bank,
	Riff_Sound_VHjump02_01_wav_pcmenc_bank,
	Riff_Sound_VHjump02_02_wav_pcmenc_bank,
	Riff_Sound_VHdoctor_01_wav_pcmenc_bank,
	Riff_Sound_VHdoctor_02_wav_pcmenc_bank,
	Riff_Sound_VHdoctor_03_wav_pcmenc_bank,

	// Simpsons - move above
	Riff_Sound_SimpsonsSucked_01_wav_pcmenc_bank,

	// Commando
	Riff_Sound_Commando_01_wav_pcmenc_bank,
	Riff_Sound_Commando_02_wav_pcmenc_bank,

	// GnR
	Riff_Sound_Youza40_01_wav_pcmenc_bank,

	// WW
	Riff_Sound_Wayne_01_wav_pcmenc_bank,

	// Eminem
	Riff_Sound_Eminem_01_wav_pcmenc_bank,

	// Title
	Riff__Title__Screen__01_wav_pcmenc_bank,
	Riff__Title__Screen__02_wav_pcmenc_bank,
	Riff__Title__Screen__03_wav_pcmenc_bank,
	Riff__Title__Screen__04_wav_pcmenc_bank,
	Riff__Title__Screen__05_wav_pcmenc_bank,
	Riff__Title__Screen__06_wav_pcmenc_bank,
	Riff__Title__Screen__07_wav_pcmenc_bank,
	Riff__Title__Screen__08_wav_pcmenc_bank,
	Riff__Title__Screen__09_wav_pcmenc_bank,

	// Splash
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

//const unsigned char *riff_sample_data[] =
//{
//	// Simpsons
//	Riff_Sound_Excellent10_01_wav_pcmenc,
//	Riff_Sound_Excellent20_01_wav_pcmenc,
//	Riff_Sound_Excellent30_01_wav_pcmenc,
//	Riff_Sound_Excellent40_01_wav_pcmenc,
//	Riff_Sound_Excellent50_01_wav_pcmenc,
//
//	// Austin Powers
//	Riff_Sound_Austin01_01_wav_pcmenc,
//	Riff_Sound_Austin02_01_wav_pcmenc,
//	Riff_Sound_Austin02_02_wav_pcmenc,
//	Riff_Sound_Austin03_01_wav_pcmenc,
//	Riff_Sound_Austin03_02_wav_pcmenc,
//
//	// Silicon Valley
//	Riff_Sound_Silicon01_01_wav_pcmenc,
//	Riff_Sound_Silicon02_01_wav_pcmenc,
//	Riff_Sound_Silicon03_01_wav_pcmenc,
//
//	// Game Over
//	Riff_Sound_Over_01_wav_pcmenc,
//	Riff_Sound_Over_02_wav_pcmenc,
//
//	// AC/DC ready
//	Riff_Intro_ACDC_01_wav_pcmenc,
//	Riff_Intro_ACDC_02_wav_pcmenc,
//
//	// Ultimage Warrior
//	Riff_Intro_Ultimate_01_wav_pcmenc,
//	Riff_Intro_Ultimate_02_wav_pcmenc,
//	Riff_Intro_Ultimate_03_wav_pcmenc,
//	Riff_Intro_Ultimate_04_wav_pcmenc,
//
//	// Wayne World	 bank 20
//	//Riff_Sound_Wayne_01_wav_pcmenc,
//
//	// Eminem	 bank 30
//	//Riff_Sound_Eminem_01_wav_pcmenc,
//
//	// License to Drive	bank 28-29
//	Riff_Death_Licence_01_wav_pcmenc,
//	Riff_Death_Licence_02_wav_pcmenc,
//
//	// Hulk Hogan	bank 21-24
//	Riff_Intro_Hulk_01_wav_pcmenc,
//	Riff_Intro_Hulk_02_wav_pcmenc,
//	Riff_Intro_Hulk_03_wav_pcmenc,
//	Riff_Intro_Hulk_04_wav_pcmenc,
//
//	// Title riff	bank 41-49	[x9]
//	Riff__Title__Screen__01_wav_pcmenc,
//	Riff__Title__Screen__02_wav_pcmenc,
//	Riff__Title__Screen__03_wav_pcmenc,
//	Riff__Title__Screen__04_wav_pcmenc,
//	Riff__Title__Screen__05_wav_pcmenc,
//	Riff__Title__Screen__06_wav_pcmenc,
//	Riff__Title__Screen__07_wav_pcmenc,
//	Riff__Title__Screen__08_wav_pcmenc,
//	Riff__Title__Screen__09_wav_pcmenc,
//
//	// Splash riff	bank 51-59	[x9]
//	Riff__Splash__Screen__01_wav_pcmenc,
//	Riff__Splash__Screen__02_wav_pcmenc,
//	Riff__Splash__Screen__03_wav_pcmenc,
//	Riff__Splash__Screen__04_wav_pcmenc,
//	Riff__Splash__Screen__05_wav_pcmenc,
//	Riff__Splash__Screen__06_wav_pcmenc,
//	Riff__Splash__Screen__07_wav_pcmenc,
//	Riff__Splash__Screen__08_wav_pcmenc,
//	Riff__Splash__Screen__09_wav_pcmenc,
//
//	// VH
//	Riff_Sound_VHshriek_01_wav_pcmenc,
//	Riff_Sound_VHjump02_01_wav_pcmenc,
//	Riff_Sound_VHjump02_02_wav_pcmenc,
//	Riff_Sound_VHdoctor_01_wav_pcmenc,
//	Riff_Sound_VHdoctor_02_wav_pcmenc,
//	Riff_Sound_VHdoctor_03_wav_pcmenc,
//
//	// Simpsons - move above
//	Riff_Sound_SimpsonsSucked_01_wav_pcmenc,
//
//	// Commando
//	Riff_Sound_Commando_01_wav_pcmenc,
//	Riff_Sound_Commando_02_wav_pcmenc,
//
//	// GnR
//	Riff_Sound_Youza40_01_wav_pcmenc,
//
//	// WW
//	Riff_Sound_Wayne_01_wav_pcmenc,
//
//	// Eminem
//	Riff_Sound_Eminem_01_wav_pcmenc,
//};
//const unsigned char riff_sample_bank[] =
//{
//	// Simpsons
//	Riff_Sound_Excellent10_01_wav_pcmenc_bank,
//	Riff_Sound_Excellent20_01_wav_pcmenc_bank,
//	Riff_Sound_Excellent30_01_wav_pcmenc_bank,
//	Riff_Sound_Excellent40_01_wav_pcmenc_bank,
//	Riff_Sound_Excellent50_01_wav_pcmenc_bank,
//
//	// Austin Powers
//	Riff_Sound_Austin01_01_wav_pcmenc_bank,
//	Riff_Sound_Austin02_01_wav_pcmenc_bank,
//	Riff_Sound_Austin02_02_wav_pcmenc_bank,
//	Riff_Sound_Austin03_01_wav_pcmenc_bank,
//	Riff_Sound_Austin03_02_wav_pcmenc_bank,
//
//	// Silicon Valley
//	Riff_Sound_Silicon01_01_wav_pcmenc_bank,
//	Riff_Sound_Silicon02_01_wav_pcmenc_bank,
//	Riff_Sound_Silicon03_01_wav_pcmenc_bank,
//
//	// Game Over
//	Riff_Sound_Over_01_wav_pcmenc_bank,
//	Riff_Sound_Over_02_wav_pcmenc_bank,
//
//	// AC/DC ready
//	Riff_Intro_ACDC_01_wav_pcmenc_bank,
//	Riff_Intro_ACDC_02_wav_pcmenc_bank,
//
//	// Ultimage Warrior
//	Riff_Intro_Ultimate_01_wav_pcmenc_bank,
//	Riff_Intro_Ultimate_02_wav_pcmenc_bank,
//	Riff_Intro_Ultimate_03_wav_pcmenc_bank,
//	Riff_Intro_Ultimate_04_wav_pcmenc_bank,
//
//	// Wayne World	 bank 20
//	//Riff_Sound_Wayne_01_wav_pcmenc_bank,
//
//	// Eminem	 bank 30
//	//Riff_Sound_Eminem_01_wav_pcmenc_bank,
//
//	// License to Drive	bank 28-29
//	Riff_Death_Licence_01_wav_pcmenc_bank,
//	Riff_Death_Licence_02_wav_pcmenc_bank,
//
//	// Hulk Hogan	bank 21-24
//	Riff_Intro_Hulk_01_wav_pcmenc_bank,
//	Riff_Intro_Hulk_02_wav_pcmenc_bank,
//	Riff_Intro_Hulk_03_wav_pcmenc_bank,
//	Riff_Intro_Hulk_04_wav_pcmenc_bank,
//
//	Riff__Title__Screen__01_wav_pcmenc_bank,
//	Riff__Title__Screen__02_wav_pcmenc_bank,
//	Riff__Title__Screen__03_wav_pcmenc_bank,
//	Riff__Title__Screen__04_wav_pcmenc_bank,
//	Riff__Title__Screen__05_wav_pcmenc_bank,
//	Riff__Title__Screen__06_wav_pcmenc_bank,
//	Riff__Title__Screen__07_wav_pcmenc_bank,
//	Riff__Title__Screen__08_wav_pcmenc_bank,
//	Riff__Title__Screen__09_wav_pcmenc_bank,
//
//	Riff__Splash__Screen__01_wav_pcmenc_bank,
//	Riff__Splash__Screen__02_wav_pcmenc_bank,
//	Riff__Splash__Screen__03_wav_pcmenc_bank,
//	Riff__Splash__Screen__04_wav_pcmenc_bank,
//	Riff__Splash__Screen__05_wav_pcmenc_bank,
//	Riff__Splash__Screen__06_wav_pcmenc_bank,
//	Riff__Splash__Screen__07_wav_pcmenc_bank,
//	Riff__Splash__Screen__08_wav_pcmenc_bank,
//	Riff__Splash__Screen__09_wav_pcmenc_bank,
//
//	// VH
//	Riff_Sound_VHshriek_01_wav_pcmenc_bank,
//	Riff_Sound_VHjump02_01_wav_pcmenc_bank,
//	Riff_Sound_VHjump02_02_wav_pcmenc_bank,
//	Riff_Sound_VHdoctor_01_wav_pcmenc_bank,
//	Riff_Sound_VHdoctor_02_wav_pcmenc_bank,
//	Riff_Sound_VHdoctor_03_wav_pcmenc_bank,
//
//	// Simpsons - move above
//	Riff_Sound_SimpsonsSucked_01_wav_pcmenc_bank,
//
//	// Commando
//	Riff_Sound_Commando_01_wav_pcmenc_bank,
//	Riff_Sound_Commando_02_wav_pcmenc_bank,
//
//	// GnR
//	Riff_Sound_Youza40_01_wav_pcmenc_bank,
//
//	// WW
//	Riff_Sound_Wayne_01_wav_pcmenc_bank,
//
//	// Eminem
//	Riff_Sound_Eminem_01_wav_pcmenc_bank,
//
//};

// FIXED bank.
// Audio Manager.
const unsigned char *music_object_data[] =
{
	mus_death_psg,
	mus_beat_psg,
	mus_cont_psg,
	mus_level_psg,
	mus_over_psg,

	animeopening_psg,
	usas_jubaruins_psg,
	mohenjodaro_usas_psg,
	mastertracker_psg,
	//sound0_psg,
	//sound1_psg,
	//sound2_psg,
	//sound3_psg,
	//sound4_psg,
	//sound5_psg,
	//sound6_psg,
	//sound7_psg,
	//sound8_psg,
	//sound9_psg,
};
const unsigned char music_object_bank[] =
{
	mus_death_psg_bank,
	mus_beat_psg_bank,
	mus_cont_psg_bank,
	mus_level_psg_bank,
	mus_over_psg_bank,

	animeopening_psg_bank,
	usas_jubaruins_psg_bank,
	mohenjodaro_usas_psg_bank,
	mastertracker_psg_bank,
	//sound0_psg_bank,
	//sound1_psg_bank,
	//sound2_psg_bank,
	//sound3_psg_bank,
	//sound4_psg_bank,
	//sound5_psg_bank,
	//sound6_psg_bank,
	//sound7_psg_bank,
	//sound8_psg_bank,
	//sound9_psg_bank,
};

const unsigned char *sound_object_data[] =
{
	sfx_accept_psg,
	sfx_gem_psg,
	sfx_power_psg,
	sfx_reset_psg,
};
const unsigned char sound_object_bank[] =
{
	sfx_accept_psg_bank,
	sfx_gem_psg_bank,
	sfx_power_psg_bank,
	sfx_reset_psg_bank,
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



/*
#include "fixedbank.h"
#include "bank8.h"
#include "bank10.h"
#include "bank11.h"
#include "bank12.h"
#include "bank13.h"
#include "bank14.h"
#include "bank15.h"
#include "bank16.h"
#include "bank17.h"
#include "bank18.h"
#include "bank19.h"
#include "banK20.h"
#include "banK21.h"
#include "banK22.h"
#include "banK23.h"
#include "banK24.h"
#include "banK25.h"
#include "banK26.h"
#include "banK27.h"
#include "banK28.h"
#include "banK29.h"
#include "banK30.h"
#include "bank31.h"
#include "bank32.h"
#include "bank33.h"
#include "bank34.h"
#include "bank35.h"
#include "bank36.h"
#include "bank37.h"
#include "bank38.h"
#include "bank39.h"
#include "bank40.h"
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
// Simpsons
Riff_Sound_Excellent10_01_wav_pcmenc,

// Austin Powers	bank 10-14
Riff_Sound_Austin01_01_wav_pcmenc,
Riff_Sound_Austin02_01_wav_pcmenc,
Riff_Sound_Austin02_02_wav_pcmenc,
Riff_Sound_Austin03_01_wav_pcmenc,
Riff_Sound_Austin03_02_wav_pcmenc,

// Silicon Valley	bank 15-17
Riff_Sound_Silicon01_01_wav_pcmenc,
Riff_Sound_Silicon02_01_wav_pcmenc,
Riff_Sound_Silicon03_01_wav_pcmenc,

// Game Over	bank18-19
Riff_Sound_Over_01_wav_pcmenc,
Riff_Sound_Over_02_wav_pcmenc,

// BeeGees	bank11-17
//Riff_Finish_BeeGees_01_wav_pcmenc,
//Riff_Finish_BeeGees_02_wav_pcmenc,
//Riff_Finish_BeeGees_03_wav_pcmenc,
//Riff_Finish_BeeGees_04_wav_pcmenc,
//Riff_Finish_BeeGees_05_wav_pcmenc,
//Riff_Finish_BeeGees_06_wav_pcmenc,
//Riff_Finish_BeeGees_07_wav_pcmenc,

// AC/DC ready	bank 39-40
Riff_Intro_ACDC_01_wav_pcmenc,
Riff_Intro_ACDC_02_wav_pcmenc,

// Kiss	bank 35-38
Riff_Intro_Kiss_01_wav_pcmenc,
Riff_Intro_Kiss_02_wav_pcmenc,
Riff_Intro_Kiss_03_wav_pcmenc,
Riff_Intro_Kiss_04_wav_pcmenc,

// Ultimage Warrior	bank 31-34
Riff_Intro_Ultimate_01_wav_pcmenc,
Riff_Intro_Ultimate_02_wav_pcmenc,
Riff_Intro_Ultimate_03_wav_pcmenc,
Riff_Intro_Ultimate_04_wav_pcmenc,

// Wayne World	 bank 20
Riff_Sound_Wayne_01_wav_pcmenc,

// Eminem	 bank 30
Riff_Sound_Eminem_01_wav_pcmenc,

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
//Riff__01_wav_pcmenc,
//Riff__02_wav_pcmenc,
};
const unsigned char riff_sample_bank[] =
{
Riff_Sound_Austin01_01_wav_pcmenc_bank,
Riff_Sound_Austin02_01_wav_pcmenc_bank,
Riff_Sound_Austin02_02_wav_pcmenc_bank,
Riff_Sound_Austin03_01_wav_pcmenc_bank,
Riff_Sound_Austin03_02_wav_pcmenc_bank,

Riff_Sound_Silicon01_01_wav_pcmenc_bank,
Riff_Sound_Silicon02_01_wav_pcmenc_bank,
Riff_Sound_Silicon03_01_wav_pcmenc_bank,

Riff_Sound_Over_01_wav_pcmenc_bank,
Riff_Sound_Over_02_wav_pcmenc_bank,

//Riff_Finish_BeeGees_01_wav_pcmenc_bank,
//Riff_Finish_BeeGees_02_wav_pcmenc_bank,
//Riff_Finish_BeeGees_03_wav_pcmenc_bank,
//Riff_Finish_BeeGees_04_wav_pcmenc_bank,
//Riff_Finish_BeeGees_05_wav_pcmenc_bank,
//Riff_Finish_BeeGees_06_wav_pcmenc_bank,
//Riff_Finish_BeeGees_07_wav_pcmenc_bank,

Riff_Intro_ACDC_01_wav_pcmenc_bank,
Riff_Intro_ACDC_02_wav_pcmenc_bank,

Riff_Intro_Kiss_01_wav_pcmenc_bank,
Riff_Intro_Kiss_02_wav_pcmenc_bank,
Riff_Intro_Kiss_03_wav_pcmenc_bank,
Riff_Intro_Kiss_04_wav_pcmenc_bank,

Riff_Intro_Ultimate_01_wav_pcmenc_bank,
Riff_Intro_Ultimate_02_wav_pcmenc_bank,
Riff_Intro_Ultimate_03_wav_pcmenc_bank,
Riff_Intro_Ultimate_04_wav_pcmenc_bank,

Riff_Sound_Wayne_01_wav_pcmenc_bank,

Riff_Sound_Eminem_01_wav_pcmenc_bank,

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

//Riff__01_wav_pcmenc_bank,
//Riff__02_wav_pcmenc_bank,
};

const unsigned char steven_object_numbers[] =
{
17,
34,
51,
};

const unsigned char *riff_object_texts[] =
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
*/