#ifndef _PATH_OBJECT_H_
#define _PATH_OBJECT_H_

#include "..\engine\global_manager.h"

typedef struct tag_struct_path_object
{
	unsigned char gamer_route[ GAMER_MAX_PATHS ][ GAMER_MAX_FRAME ];

} struct_path_object;

#endif//_PATH_OBJECT_H_