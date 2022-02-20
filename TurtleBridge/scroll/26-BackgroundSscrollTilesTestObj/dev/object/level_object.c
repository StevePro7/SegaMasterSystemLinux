#include "level_object.h"
#include "../engine/enum_manager.h"

const unsigned int planeA_object_column[] = 
{
	32, //40, 48, 56
}; 

const unsigned char planeA_object_object[] =
{
	tile_type_section01,
	//tile_type_section03,
	//tile_type_section03, tile_type_section03, tile_type_section03, //tile_type_sea_turtles, tile_type_fly_turtles
};

const unsigned char planeA_object_metadata[] =
{
	2, //18, 18, 18
};

const unsigned int planeB_object_column[] =
{
	40,
};

const unsigned char planeB_object_object[] =
{
	tile_type_sign_goal,
};

const unsigned char planeB_object_metadata[] =
{
	9,
};


const unsigned char level_object_type[] =
{
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	0, 0, 0, 0, 0, 0, 0, 0,
};

const unsigned char level_object_sect[] = 
{
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 1, 2, 3, 4, 5, 2, 3, 4, 5, 2, 3, 4, 5, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 2, 3, 4, 5, 2, 3, 4, 5, 2, 3, 4, 5, 6, 7, 
	0, 0, 0, 0, 0, 0, 0, 0,
};