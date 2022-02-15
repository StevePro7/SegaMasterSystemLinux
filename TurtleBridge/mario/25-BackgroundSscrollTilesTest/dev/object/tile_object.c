#include "tile_object.h"
#include "../banks/fixedbank.h"

// Tiles.
const unsigned char *tile_object_data[] =
{
	sea_tiles_array,
	section01_array,
	section02_array,
	section03_array,
	section04_array,
	cloud01_array,
	cloud02_array,
	sea_turtleA1_array,
	sea_turtleA2_array,
	sea_turtleA3_array,
	sea_turtleB1_array,
	sea_turtleB2_array,
	sea_turtleB3_array,
	fly_turtle01_array,
	fly_turtle02_array,
	sign_numb_array,
	sign_goal_array,
};

const unsigned char tile_object_wide[] =
{
	4,		// sea_tiles
	12,		// section01
	12,		// section02
	8,		// section03	ground
	8,		// section04	tree
	4, 6
};
const unsigned char tile_object_high[] = 
{
	3, 
	10, 
	6, 
	4, 
	10, 
	3, 3
};
