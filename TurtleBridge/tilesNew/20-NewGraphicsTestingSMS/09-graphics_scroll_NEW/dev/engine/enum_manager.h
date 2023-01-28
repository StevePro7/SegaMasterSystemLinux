#ifndef _ENUM_MANAGER_H_
#define _ENUM_MANAGER_H_

typedef enum tag_enum_screen_type
{
	screen_type_none = 0,
	screen_type_splash = 1,
	screen_type_begin = 2,
	screen_type_intro = 3,
	screen_type_title = 4,
	screen_type_start = 5,
	screen_type_init = 6,
	screen_type_load = 7,
	screen_type_ready = 8,
	screen_type_play = 9,
	screen_type_pass = 10,
	screen_type_dead = 11,
	screen_type_cont = 12,
	screen_type_over = 13,
	screen_type_boss = 14,
	screen_type_beat = 15,
	screen_type_option = 16,
	screen_type_test = 17,
	screen_type_func = 18,

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

typedef enum tag_enum_player_state
{
	player_state_isonground = 0,
	player_state_isintheair = 1,
	player_state_isnowdying = 2,
	player_state_iskilldaed = 3,

} enum_player_state;

typedef enum tag_enum_difficulty_type
{
	difficulty_type_easier = 0,
	difficulty_type_normal = 1,
	difficulty_type_harder = 2,
	difficulty_type_insane = 3,

} enum_difficulty_type;

typedef enum tag_enum_tile_type
{
	tile_type_waves_block = 0,
	tile_type_bridge_midd = 1,
	tile_type_bridge_side = 2,
	tile_type_bridge_sign = 3,
	tile_type_island_midd = 4,
	tile_type_island_left = 5,
	tile_type_island_rght = 6,
	tile_type_island_sign = 7,
	tile_type_islandTreeL = 8,
	tile_type_islandTreeR = 9,
	tile_type_turtle_sea1 = 10,
	tile_type_turtle_sea2 = 11,
	tile_type_turtle_fly1 = 12,
	tile_type_turtle_fly2 = 13,
	tile_type_turtle_fly3 = 14,
	tile_type_turtle_fly4 = 15,

	tile_type_bridge_side_flip = 16,
	tile_type_bridge_sign_goal = 17,
	tile_type_island_sign_goal = 18,

} enum_tile_type;

#endif//_ENUM_MANAGER_H_