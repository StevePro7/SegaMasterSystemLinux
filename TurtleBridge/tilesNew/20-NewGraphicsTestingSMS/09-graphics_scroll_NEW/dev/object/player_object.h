#ifndef _PLAYER_OBJECT_H_
#define _PLAYER_OBJECT_H_

typedef struct tag_struct_player_object
{
	unsigned char initX;
	unsigned int posnX;			// max posnX	2,047	i.e. 2048-1
	unsigned char tileX;		// 255 * 8		2,047
	unsigned char lookX;
	//unsigned char initY;		don't think I need this?
	unsigned char posnY;
	unsigned char tileY;
	unsigned int leapY;
	unsigned char drawX, drawY;
	unsigned char player_state;
	//unsigned char player_index;
	unsigned char jumper_index;
	//unsigned char jumper_array;		// replaced by jump_ptr	TODO delete
	unsigned char player_frame;
	unsigned char motion_count;

} struct_player_object;

// TODO re-instate in fixed bank
// Player Manager.
extern const unsigned char player_object_starts[];

extern const signed int *jump_array_ptr[];
extern const unsigned char jump_array_len[];
extern const signed int jump_array_00[];
extern const signed int jump_array_01[];
extern const signed int jump_array_02[];
extern const signed int jump_array_03[];

#endif//_PLAYER_OBJECT_H_