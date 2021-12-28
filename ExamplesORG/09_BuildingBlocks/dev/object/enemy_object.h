#ifndef _ENEMY_OBJECT_H_
#define _ENEMY_OBJECT_H_

typedef struct tag_struct_enemy_object
{
	unsigned char index;
	unsigned char enemyX;
	unsigned char enemyY;
	unsigned char color;
	unsigned char frame;
	unsigned char delay;
	unsigned char timer;
	unsigned int base;
	unsigned int tile;

} struct_enemy_object;

#endif//_ENEMY_OBJECT_H_