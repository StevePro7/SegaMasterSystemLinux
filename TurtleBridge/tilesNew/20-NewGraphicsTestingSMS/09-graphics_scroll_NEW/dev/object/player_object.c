#include "player_object.h"

// TODO re-instate in fixed bank
// Player Manager.
//const unsigned char player_object_starts[] = { 32, 48, 64, 80, 96 };
const unsigned char player_object_starts[] = { 40, 72, 104, 136 };		//IMPORTANT 30-Jan-2023 - may have to use this for first turtle.
//const unsigned char player_object_starts[] = { 40, 56, 72, 88, 104 };        //IMPORTANT 30-Jan-2023 - may have to use this for first turtle.
//const unsigned char player_object_starts[] = { 160,176,192,208,224 };

const signed int *jump_array_ptr[] =
{
	jump_array_01,
	jump_array_02,
	//jump_array_03,
};

const unsigned char jump_array_len[] = { 17, 34 };

const signed int jump_array_01[] =
{
	1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5,
};

const signed int jump_array_02[] =
{
	-11, -8, -7, -6, -5, -4, -4, -3, -3, -3, -2, -2, -2, -1, -1, -1, -1, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5,
};
//const signed int jump_array_03[] = { 1, 2, 4, 8, 16, 32, 64, };