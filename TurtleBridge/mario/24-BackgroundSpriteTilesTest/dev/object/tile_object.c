#include "tile_object.h"
#include "../banks/fixedbank.h"

// Tiles.
const unsigned char *tile_object_data[] =
{
	sea_tiles_array,
	section01_array,
	section01b_array,
	section02_array,
	section02b_array,
	section03_array,
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

extern const unsigned char tile_object_wide[] = { 32, 16, 16, 16, 12, 8, 4, 6 };
extern const unsigned char tile_object_high[] = { 3, 10, 6, 4, 4, 10, 3, 3 };
