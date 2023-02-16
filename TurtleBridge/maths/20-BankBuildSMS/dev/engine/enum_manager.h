#ifndef _ENUM_MANAGER_H_
#define _ENUM_MANAGER_H_

typedef enum tag_enum_screen_type
{
	screen_type_none = 0,
	screen_type_splash = 1,
	screen_type_begin = 2,
	screen_type_intro = 3,
	screen_type_title = 4,
	screen_type_demo = 5,
	screen_type_diff = 6,
	screen_type_level = 7,
	screen_type_start = 8,
	screen_type_init = 9,
	screen_type_load = 10,
	screen_type_ready = 11,
	screen_type_play = 12,
	screen_type_pass = 13,
	screen_type_dead = 14,
	screen_type_cont = 15,
	screen_type_over = 16,
	screen_type_boss = 17,
	screen_type_beat = 18,
	screen_type_option = 19,
	screen_type_test = 20,
	screen_type_func = 21,

} enum_screen_type;

typedef enum tag_enum_tile_type
{
	tile_type_no_tiles = 0,
	tile_type_sea_tiles = 1,
	tile_type_section01 = 2,
	tile_type_section02 = 3,
	tile_type_section03 = 4,
	tile_type_section04 = 5,
	tile_type_cloud01 = 6,
	tile_type_cloud02 = 7,
	tile_type_sea_turtles = 8,
	tile_type_lie_turtles = 9,
	tile_type_fly_turtles = 10,
	tile_type_sign_numb = 11,
	tile_type_sign_goal = 12,

} enum_tile_type;

typedef enum tag_enum_turtle_type_sea
{
	turtle_type_sea_turtleA1 = 0,
	turtle_type_sea_turtleB1 = 1,
	turtle_type_sea_turtleA2 = 2,
	turtle_type_sea_turtleB2 = 3,
	//turtle_type_sea_turtleA3 = 4,
	//turtle_type_sea_turtleA4 = 5,

} enum_turtle_type_sea;

typedef enum tag_enum_turtle_type_lie
{
	turtle_type_lie_turtle01 = 0,
	turtle_type_lie_turtle02 = 1,

} enum_turtle_type_lie;


typedef enum tag_enum_turtle_type_fly
{
	turtle_type_fly_turtle01 = 0,
	turtle_type_fly_turtle02 = 1,

} enum_turtle_type_fly;

//typedef enum tag_enum_tile_size
//{
//	tile_size_sea_tiles = 0,
//	tile_size_section01 = 1,
//	tile_size_section02 = 2,
//	tile_size_section03 = 3,
//	tile_size_section04 = 4,
//	tile_size_cloud01 = 5,
//	tile_size_cloud02 = 6,
//	tile_size_turtles = 7,
//	tile_size_signs = 8,
//
//} enum_tile_size;

//typedef enum tag_enum_tile_flip
//{
//	tile_type_none = 0,
//	tile_type_dirX = 1,
//	//tile_type_dirY = 2,
//	//tile_type_both = 3,
//
//} enum_tile_flip;

#endif//_ENUM_MANAGER_H_