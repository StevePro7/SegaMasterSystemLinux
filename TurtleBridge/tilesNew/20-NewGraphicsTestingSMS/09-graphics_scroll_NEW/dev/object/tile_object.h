#ifndef _TILE_OBJECT_H_
#define _TILE_OBJECT_H_

#define TILMAP_WIDE		16
#define TILE_NONE		0
#define TILE_SKY		64
#define TILE_SEA		64
#define TILE_BRIDGE		160
#define TILE_ISLAND		480
#define TILE_TURTLEF	1120
#define TILE_TURTLEH	1216
#define TILE_TREE		608
#define TILE_SIGN		1312
#define TILE_GOAL		1408
#define TILE_CLOUDB		928
#define TILE_CLOUDS		1024

typedef struct tag_struct_tile_object
{
	unsigned int tilemap_index;
	unsigned char tile_wide;
	unsigned char tile_high;

} struct_tile_object;

#endif//_LEVEL_OBJECT_H_