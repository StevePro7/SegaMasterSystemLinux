#include "tile_object.h"
//#include "../banks/fixedbank.h"

// Tiles.
const unsigned char *tile_object_data[] =
{
	0,
	//sea_tiles_array,
	//section01_array,
	//section01b_array,
	//section02_array,
	//section02b_array,
	//section03_array,
	//cloud01_array,
	//cloud02_array,
	//sea_turtleA1_array,
	//sea_turtleA2_array,
	//sea_turtleA3_array,
	//sea_turtleB1_array,
	//sea_turtleB2_array,
	//sea_turtleB3_array,
	//fly_turtle01_array,
	//fly_turtle02_array,
	//sign_numb_array,
	//sign_goal_array,
};

extern const unsigned char tile_object_wide[] = { 32, 16, 16, 16, 12, 8, 4, 6 };
extern const unsigned char tile_object_high[] = { 3, 10, 6, 4, 4, 10, 3, 3 };


extern const unsigned char *tile_object_dataX[] =
{
	0,
	//empty_sector_array,
	//wave_equator_array,
	//large_ground_array,
	//small_ground_array,
	//earth_ground_array,
	//diver_turtle_array,
	//hover_turtle_array,
	//flyer_turtle_array,
	//trees_planeB_array,
	//sign_sendAll_array,
	//sign_goalAll_array,
	//cloud_largeC_array,
	//cloud_smallC_array,
};

extern const unsigned char tile_object_wideX[] =
{
	1,		// empty_sector
	4,		// wave_equator
	12,		// large_ground
	12,		// small_ground
	8,		// earth_ground
	4,		// diver_turtle
	4,		// hover_turtle
	4,		// flyer_turtle
	8,		// trees_planeB
	3,		// sign_sendAll
	3,		// sign_goalAll
	6,		// cloud_smallC
	4,		// 	cloud_largeC
};

extern const unsigned char tile_object_highX[] =
{
	1,		// empty_sector
	5,		// wave_equator
	10,		// large_ground
	6,		// small_ground
	4,		// earth_ground
	3,		// diver_turtle
	3,		// hover_turtle
	3,		// flyer_turtle
	10,		// trees_planeB
	3,		// sign_sendAll
	3,		// sign_goalAll
	3,		// cloud_smallC
	3,		// 	cloud_largeC
};