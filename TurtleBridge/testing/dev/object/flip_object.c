#include "flip_object.h"

const unsigned char *flip_array_ptr[]=
{
    flip_array_00,
	flip_array_01,
	flip_array_02,
	flip_array_03,
    flip_array_04,
    flip_array_05,
    flip_array_06,
};

const unsigned char flip_array_00[] = { 2, 2, 2, 2, 2, 2, 2, 2, 2 };
const unsigned char flip_array_01[] = { 2, 2, 6, 6, 2, 6, 6, 2, 2 };

const unsigned char flip_array_02[] = { 2, 3, 4, 5, 2, 3, 4, 5, 2 };
const unsigned char flip_array_03[] = { 2, 5, 4, 3, 2, 5, 4, 3, 2 };

const unsigned char flip_array_04[] = { 2, 2, 5, 9, 5, 9, 5, 2, 2 };

const unsigned char flip_array_05[] = { 2, 5, 4, 8, 4, 8, 4, 3, 2 };

// Crazy experiments.
const unsigned char flip_array_06[] = { 2, 2, 2, 3, 3, 3, 4, 4, 4 };

//const unsigned char flip_array_02[] = { 2, 2, 6, 6, 2, 2, 6, 6, 2 };