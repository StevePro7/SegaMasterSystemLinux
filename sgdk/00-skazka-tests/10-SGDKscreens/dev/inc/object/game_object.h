#ifndef _GAME_OBJECT_H_
#define _GAME_OBJECT_H_

//#ifdef _CONSOLE
////#include "_genesis.h"
////#include <stdbool.h>
////#include <stdlib.h>
//#else
////#include <genesis.h>
//#endif

typedef struct tag_struct_game_object
{
	unsigned char intro_once;
	unsigned char play_music;
	unsigned char flash_arrow;
	unsigned char difficulty;

} struct_game_object;

#endif//_GAME_OBJECT_H_