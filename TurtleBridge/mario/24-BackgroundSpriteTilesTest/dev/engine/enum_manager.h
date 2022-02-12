#ifndef _ENUM_MANAGER_H_
#define _ENUM_MANAGER_H_

typedef enum tag_enum_tile_type
{
	tile_type_sea_tiles = 0,
	tile_type_section01 = 1,
	tile_type_section02 = 2,
	tile_type_section03 = 3,
	tile_type_cloud01 = 4,
	tile_type_cloud02 = 5,
	tile_type_sea_turtleA1 = 6,
	tile_type_sea_turtleA2 = 7,
	tile_type_sea_turtleA3 = 8,
	tile_type_sea_turtleB1 = 9,
	tile_type_sea_turtleB2 = 10,
	tile_type_sea_turtleB3 = 11,
	tile_type_fly_turtle01 = 12,
	tile_type_fly_turtle02 = 13,
	tile_type_sign_numb = 14,
	tile_type_sign_goal = 15,
	

} enum_tile_type;

typedef enum tag_enum_tile_flip
{
	tile_type_none = 0,
	tile_type_dirX = 1,
	//tile_type_dirY = 2,
	//tile_type_both = 3,

} enum_tile_flip;

#endif//_ENUM_MANAGER_H_