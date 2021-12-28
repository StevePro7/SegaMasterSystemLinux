#ifndef _GAMER_OBJECT_H_
#define _GAMER_OBJECT_H_

typedef struct tag_struct_gamer_object
{
	unsigned char kidX;
	unsigned char kidY;
	unsigned char velZ;
	unsigned char steps;
	unsigned char kidColor;
	unsigned char kidFrame;
	unsigned int kidTile;
	unsigned char direction;
	unsigned char lifecycle;
	unsigned char moveFrame;
	unsigned char pathIndex;
	unsigned char prevIndex;

} struct_gamer_object;

#endif//_GAMER_OBJECT_H_