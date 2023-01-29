#include "fixedbank.h"
#include "bank4.h"
#include "bank5.h"
#include "bank6.h"

// FIXED bank.
// Audio Manager.
const unsigned char *music_object_data[] =
{
	animeopening_psg,
	mastertracker_psg,
};
const unsigned char music_object_bank[] =
{
	animeopening_psg_bank,
	mastertracker_psg_bank,
};

// TODO re-instate in fixed bank
// Player Manager.
//const unsigned char player_object_starts[] = { 32, 48, 64, 80, 96 };

// Level Manager.
const unsigned char *level_object_data[] =
{
	level1101_txt,
	level1102_txt,
	level1103_txt,
	level1104_txt,
	level1105_txt,
	level1106_txt,
	level1107_txt,
	level1108_txt,
};
const unsigned int level_object_size[] =
{
	level1101_txt_size,
	level1102_txt_size,
	level1103_txt_size,
	level1104_txt_size,
	level1105_txt_size,
	level1106_txt_size,
	level1107_txt_size,
	level1108_txt_size,
};
const unsigned char level_object_bank[] =
{
	level1101_txt_bank,
	level1102_txt_bank,
	level1103_txt_bank,
	level1104_txt_bank,
	level1105_txt_bank,
	level1106_txt_bank,
	level1107_txt_bank,
	level1108_txt_bank,
};
