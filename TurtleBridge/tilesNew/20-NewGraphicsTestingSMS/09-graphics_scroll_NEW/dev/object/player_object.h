#ifndef _PLAYER_OBJECT_H_
#define _PLAYER_OBJECT_H_

typedef struct tag_struct_player_object
{
	unsigned char initX;
	unsigned int posnX;
	unsigned int tileX;
	unsigned char lookX;
	unsigned char initY;
	unsigned char posnY;
	unsigned char tileY;
	unsigned int leapY;
	unsigned char drawX, drawY;
	unsigned char player_state;
	unsigned char player_index;
	unsigned char player_frame;
	unsigned int player_count;

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