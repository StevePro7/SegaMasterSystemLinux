#include "player_object.h"

// TODO re-instate in fixed bank
// Player Manager.
//const unsigned char player_object_starts[] = { 32, 48, 64, 80, 96 };
const unsigned char player_object_starts[] = { 40, 72, 104, 136 };		//IMPORTANT 30-Jan-2023 - may have to use this for first turtle.
//const unsigned char player_object_starts[] = { 40, 56, 72, 88, 104 };        //IMPORTANT 30-Jan-2023 - may have to use this for first turtle.
//const unsigned char player_object_starts[] = { 160,176,192,208,224 };

// IMPORTANT - require +4px delta on player draw for frames:  5, 7, 9, 11.
const unsigned char player_object_deltas[] = { 0, 0, 0, 0, 0, 4, 0, 4, 0, 4, 0, 4, };

// TODO delete - no alignment so looks weird!!
//const unsigned char player_object_deltas[] = { 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, };
// TODO delete - no alignment so looks weird!!

const signed int *jump_array_ptr[] =
{
	//signed char
	//jump_array_01,
	//jump_array_02,

	//signed int
	jump_array_00,
	jump_array_01,
	jump_array_02,
	jump_array_03,
	jump_array_04,
	jump_array_99,
};
	
//const char jump_array_len[] = { 17, 34 };
const unsigned char jump_array_len[] = { 17, 32, 32, 32, 32, 44, };

// Gravity.
//const signed int jump_array_00[] =
//{
//	//128, 128,
//	256, 256,
//};

const signed int jump_array_00[] =
{
	256, 256, 512, 512, 768, 768, 1024, 1024, 1280, 1280, 1280, 1280, 1280, 1280, 1280, 1280, 1280,
};

const signed int jump_array_01[] =
{
	-256, -256, -256, -256, -128, -128, -128, -128, -64, -64,-64, -64,-64, -64,-64, -64,-64, -64, -64, -64, 64, 64, 64, 64, 128, 128, 128, 128, 256, 256, 256, 256,
};
const signed int jump_array_02[] =
{
	-512, -512, -512, -512, -512, -256, -256, -256, -256, -256,-256, -256, -512, -512, -512, 256, 256, 256, -512, -256, -128, -128, 256, 256, 256, 256, 256, 512, 512, 512, 512, 512,
};
const signed int jump_array_03[] =
{
	-1024, -1024, -1024, -1024,-1024, -1024, -1024, -1024, -1024, -1024, -1024, -1024, -768, -768, -768, -512, -512, -512, -256, -256, 256, 256, 512, 512, 512, 768, 768, 768, 1024, 1024, 1024, 1024,
};
const signed int jump_array_04[] =
{
	-2048, -2048, -2048, -2048,-2048, -2048, -2048, -2048,-2048, -2048, -2048, -2048, -1536, -1536, -1536, -1536, -1024, -1024, -512, -512, 512, 512, 1024, 1024, 1536, 1536, 1536, 1536, 2048, 2048, 2048, 2048,
};

const signed int jump_array_99[] =
{
	-1595, -1492, -1389, -1286, -1183, -1079, -976, -873, -770, -667, -563, -460, -357, -254, -151, -47, 56, 159, 262, 365, 469, 572, 675, 778, 881, 985, 1088, 1191, 1294, 1397, 1501, 1604, 1707, 1810, 1913, 2017, 2120, 2223, 2326, 2429, 2533, 2636, 2739, 2842,
};

//const signed int jump_array_01[] =
//{
//	1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5,
//};
//
//// Jump array #1.
//const signed int jump_array_02[] =
//{
//	-11, -8, -7, -6, -5, -4, -4, -3, -3, -3, -2, -2, -2, -1, -1, -1, -1, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5,
//};

// previous
//const signed int jump_array_03[] =
//{
//	-2816, -2048, -1792, -1536, -1280, -1024, -1024, -768, -768, -768, -512, -512, -512, -256, -256, -256, -256, 256, 256, 512, 512, 768, 768, 1024, 1024, 1280, 1280, 1280, 1280, 1280, 1280, 1280, 1280, 1280,
//};