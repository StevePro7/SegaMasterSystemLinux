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
const unsigned char *mylevel_planesA[] =
{
	level_planesA01,
	level_planesA02,
	level_planesA03,
};
const unsigned char *mylevel_columnA[] =
{
	level_columnA01,
	level_columnA02,
	level_columnA03,
};

const unsigned char *level_object_data[] =
{
	level1101_txt,
	level1102_txt,
	level1103_txt,
};
const unsigned char level_object_bank[] =
{
	level1101_txt_bank,
	level1102_txt_bank,
	level1103_txt_bank,
};
