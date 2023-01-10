#ifndef _ENUM_MANAGER_H_
#define _ENUM_MANAGER_H_

typedef enum tag_enum_screen_type
{
	screen_type_none = 0,
	screen_type_splash = 1,
	//screen_type_begin = 2,
	//screen_type_intro = 3,
	screen_type_title = 4,
	//screen_type_start = 5,
	//screen_type_init = 6,
	//screen_type_load = 7,
	//screen_type_ready = 8,
	//screen_type_play = 9,
	//screen_type_pass = 10,
	//screen_type_dead = 11,
	//screen_type_cont = 12,
	//screen_type_over = 13,
	//screen_type_prep = 14,
	//screen_type_fight = 15,
	//screen_type_boss = 16,
	//screen_type_beat = 17,
	//screen_type_option = 18,
	//screen_type_credit = 19,
	screen_type_test = 20,
	screen_type_func = 21,

} enum_screen_type;

typedef enum tag_enum_input_type
{
	input_type_up = 0x01,
	input_type_down = 0x02,
	input_type_left = 0x04,
	input_type_right = 0x08,
	input_type_fire1 = 0x10,
	input_type_fire2 = 0x20,

} enum_input_type;

typedef enum tag_enum_tile_type
{
	tile_type_none = 0,
	tile_type_sky = 1,
	tile_type_sea = 2,
	tile_type_bridge = 3,
	tile_type_island= 4,
	tile_type_turtleF = 5,
	tile_type_turtleH = 6,
	tile_type_tree = 7,
	tile_type_sign = 8,
	tile_type_goal = 9,
	tile_type_cloudB = 10,
	tile_type_cloudS = 11,

} enum_tile_type;

#endif//_ENUM_MANAGER_H_