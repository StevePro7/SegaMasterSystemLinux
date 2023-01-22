#ifndef _PLAYER_OBJECT_H_
#define _PLAYER_OBJECT_H_

typedef struct tag_struct_player_object
{
	unsigned char posnX, posnY;
	unsigned char drawX, drawY;
	unsigned char tileX, tileY;
	unsigned char player_state;

} struct_player_object;

#endif//_PLAYER_OBJECT_H_