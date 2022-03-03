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


extern const unsigned char *tile_object_dataX[] =
{
	empty_sector_array,
	wave_equator_array,
	large_ground_array,
	small_ground_array,
	earth_ground_array,
	diver_turtle_array,
	hover_turtle_array,
	flyer_turtle_array,
	trees_planeB_array,
	sign_sendAll_array,
	sign_goalAll_array,
	cloud_largeC_array,
	cloud_smallC_array,
};

extern const unsigned char tile_object_wideX[];
extern const unsigned char tile_object_highX[];