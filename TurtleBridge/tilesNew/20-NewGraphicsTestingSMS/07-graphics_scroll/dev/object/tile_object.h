#ifndef _TILE_OBJECT_H_
#define _TILE_OBJECT_H_

#define TILMAP_WIDE		24
#define TILE_NONE		0
#define TILE_BANNER		192
#define TILE_SKY		336
#define TILE_SEA		336
#define TILE_BRIDGE		384
#define TILE_ISLAND		672
#define TILE_TURTLEF	1632
#define TILE_TURTLEH	1776
#define TILE_TREE		864
#define TILE_SIGN		1920
#define TILE_GOAL		2064
#define TILE_CLOUDB		1344
#define TILE_CLOUDS		1488

typedef struct tag_struct_tile_object
{
	unsigned int tilemap_index;
	unsigned char tile_wide;
	unsigned char tile_high;

} struct_tile_object;

#endif//_LEVEL_OBJECT_H_