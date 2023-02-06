#ifndef _PLAYER_OBJECT_H_
#define _PLAYER_OBJECT_H_

typedef struct tag_struct_player_object
{
	unsigned int posnX;
	unsigned int tileX;
	unsigned char initX, lookX;
	unsigned char posnY, tileY;
	unsigned char drawX, drawY;
	unsigned char player_state;
	unsigned char player_index;		// TODO better name!
	unsigned char player_frame;
	//unsigned int player_count;

} struct_player_object;

// TODO re-instate in fixed bank
// Player Manager.
extern const unsigned char player_object_starts[];

extern const signed int *jump_array_ptr[];
extern const unsigned char jump_array_len[];
extern const signed int jump_array_01[];
extern const signed int jump_array_02[];
extern const signed int jump_array_03[];

#endif//_PLAYER_OBJECT_H_