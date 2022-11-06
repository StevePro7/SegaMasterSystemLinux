#include "array_manager.h"

const signed int *jump_array_ptr[]=
{
	jump_array_01,
	jump_array_02,
	jump_array_03
};
const unsigned char jump_array_len[] = { 1, 2, 7 };
const signed int jump_array_01[] = { 256 };
const signed int jump_array_02[] = { 1024, 2048 };
const signed int jump_array_03[] = { 1, 2, 4, 8, 16, 32, 64, };