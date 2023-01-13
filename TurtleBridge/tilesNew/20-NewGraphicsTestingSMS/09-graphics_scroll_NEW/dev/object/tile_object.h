#ifndef _TILE_OBJECT_H_
#define _TILE_OBJECT_H_

#define TILMAP_WIDE		24
#define TILE_BLACK		120		//new
#define TILE_WHITE		2920	//new

#define TILE_NONE		0
#define TILE_SKY		64		// DEL
#define TILE_WAVE		144				// new
#define TILE_SEA		64		// DEL
#define TILE_BRIDGE		160		// DEL
#define TILE_BRIDGE_MIDD		152		// new
#define TILE_BRIDGE_RGHT		160		// new
#define TILE_BRIDGE_SIGN		168		// new
#define TILE_BRIDGE_GOAL		176		// new

#define TILE_ISLAND		480		// DEL
#define TILE_ISLAND_01		816		// new
#define TILE_ISLAND_02		832		// new
#define TILE_ISLAND_03		848		// new

#define TILE_ISLAND_04		1488		// new
#define TILE_ISLAND_05		1504		// new
#define TILE_ISLAND_06		1520		// new

#define TILE_TURTLEF	1120			// DEL
#define TILE_TURTLEH	1216			// DEL
#define TILE_TURTLEH1	2160			// new
#define TILE_TURTLEH2	2168			// new
#define TILE_TURTLEF1	2176			// new
#define TILE_TURTLEF2	2184			// new
#define TILE_TURTLEF3	2192			// new
#define TILE_TURTLEF4	2200			// new

#define TILE_TREE		608				// DEL
#define TILE_SIGN		1312			// DEL
#define TILE_GOAL		1408			// DEL
#define TILE_CLOUDB		2832		//updated
#define TILE_CLOUDS		2848		//updated

#define TILE_PLAY_TITLE		2976		//updated


//#define TILMAP_WIDE		16
//#define TILE_NONE		0
//#define TILE_SKY		64
//#define TILE_SEA		64
//#define TILE_BRIDGE		160
//#define TILE_ISLAND		480
//#define TILE_TURTLEF	1120
//#define TILE_TURTLEH	1216
//#define TILE_TREE		608
//#define TILE_SIGN		1312
//#define TILE_GOAL		1408
//#define TILE_CLOUDB		928
//#define TILE_CLOUDS		1024

typedef struct tag_struct_tile_object
{
	unsigned int tilemap_index;
	unsigned char tile_wide;
	unsigned char tile_high;

} struct_tile_object;

#endif//_LEVEL_OBJECT_H_