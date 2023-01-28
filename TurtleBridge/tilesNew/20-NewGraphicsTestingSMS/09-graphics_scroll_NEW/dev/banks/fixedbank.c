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

// Level Manager.
const unsigned char *level_object_data[] =
{
	level1101_txt,
	level1102_txt,
	level1103_txt,
	level1104_txt,
};
const unsigned int level_object_size[] =
{
	level1101_txt_size,
	level1102_txt_size,
	level1103_txt_size,
	level1104_txt_size,
};
const unsigned char level_object_bank[] =
{
	level1101_txt_bank,
	level1102_txt_bank,
	level1103_txt_bank,
	level1104_txt_bank,
};
