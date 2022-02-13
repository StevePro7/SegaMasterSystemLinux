#ifndef _ENUM_MANAGER_H_
#define _ENUM_MANAGER_H_

typedef enum tag_enum_tile_type
{
	tile_type_sea_tiles = 0,
	tile_type_section01 = 1,
	tile_type_section01b = 2,
	tile_type_section02 = 3,
	tile_type_section02b = 4,
	tile_type_section03 = 5,
	tile_type_cloud01 = 6,
	tile_type_cloud02 = 7,
	tile_type_sea_turtleA1 = 8,
	tile_type_sea_turtleA2 = 9,
	tile_type_sea_turtleA3 = 10,
	tile_type_sea_turtleB1 = 11,
	tile_type_sea_turtleB2 = 12,
	tile_type_sea_turtleB3 = 13,
	tile_type_fly_turtle01 = 14,
	tile_type_fly_turtle02 = 15,
	tile_type_sign_numb = 16,
	tile_type_sign_goal = 17,

} enum_tile_type;

typedef enum tag_enum_tile_size
{
	tile_size_sea_tiles = 0,
	tile_size_turtles = 1,
	tile_size_signs = 1,
	tile_size_section01 = 1,
	tile_size_section02 = 2,
	tile_size_section03 = 3,
	tile_size_section04 = 4,
	tile_size_section05 = 5,
	tile_size_cloud01 = 6,
	tile_size_cloud02 = 7,

} enum_tile_size;

//typedef enum tag_enum_tile_flip
//{
//	tile_type_none = 0,
//	tile_type_dirX = 1,
//	//tile_type_dirY = 2,
//	//tile_type_both = 3,
//
//} enum_tile_flip;

#endif//_ENUM_MANAGER_H_