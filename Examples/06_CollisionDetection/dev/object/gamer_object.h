#ifndef _GAMER_OBJECT_H_
#define _GAMER_OBJECT_H_

typedef struct tag_struct_gamer_object
{
	unsigned char gamerX;
	unsigned char gamerY;
	unsigned char minX;
	unsigned char minY;
	unsigned char maxX;
	unsigned char maxY;
	unsigned char velocity;
	unsigned char color;
	unsigned char frame;
	unsigned int base;
	unsigned int tile;

} struct_gamer_object;

#endif//_GAMER_OBJECT_H_