#ifndef _PLAYER_OBJECT_H_
#define _PLAYER_OBJECT_H_

typedef struct tag_struct_player_object
{
	unsigned char hp;			// N
	unsigned char xp;			// Z
	unsigned char gold;			// V
	unsigned char weapon;		// Q$	ATK
	unsigned char armor;		// W$	ARM
	unsigned char life;			// E$
	unsigned char level;		// X
	unsigned char max_hp;		// M
	unsigned char max_xp;		// Y

} struct_player_object;

#endif//_PLAYER_OBJECT_H_