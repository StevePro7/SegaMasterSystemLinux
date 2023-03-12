#ifndef _GAME_OBJECT_H_
#define _GAME_OBJECT_H_

typedef struct tag_struct_game_object
{
	unsigned char game_difficulty;
	unsigned char game_world;
	unsigned char game_round;
	unsigned char game_level;
	unsigned char game_point;		// check point.
	unsigned char game_cloud;		// set once for game session.
	unsigned char game_isgod;

} struct_game_object;

#endif//_GAME_OBJECT_H_