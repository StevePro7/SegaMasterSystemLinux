#include "tile_object.h"
#include "../banks/fixedbank.h"

// Tiles.
const unsigned char *tile_object_data[] =
{
	no_tiles_array,
	sea_tiles_array,
	section01_array,
	section02_array,
	section03_array,
	section04_array,
	cloud01_array,
	cloud02_array,
	sea_turtles_array,
	fly_turtles_array,
	sign_numb_array,
	sign_goal_array,
};

const unsigned char tile_object_wide[] =
{
	1,		// no_tiles
	4,		// sea_tiles
	12,		// section01
	12,		// section02
	8,		// section03	ground
	8,		// section04	tree
	4,		// cloud01
	6,		// cloud01
	4,		// sea_turtles
	4,		// fly_turtles
	3,		// sign_numb
	3,		// sign_goal
};
const unsigned char tile_object_high[] = 
{
	1,		// no_tiles
	3,		// sea_tiles
	10,		// section01
	6,		// section02
	4,		// section03	ground
	10,		// section04	tree
	3,		// cloud01
	3,		// cloud01
	3,		// sea_turtles
	3,		// fly_turtles
	3,		// sign_numb
	3,		// sign_goal
};
