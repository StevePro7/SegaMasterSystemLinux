//AUTOGENERATED FILE FROM png2asset
#ifndef METASPRITE_TileAnimation_H
#define METASPRITE_TileAnimation_H

#include <stdint.h>
#include <gbdk/platform.h>
#include <gbdk/metasprites.h>

#define TileAnimation_TILE_ORIGIN 0
#define TileAnimation_TILE_W 8
#define TileAnimation_TILE_H 8
#define TileAnimation_WIDTH 64
#define TileAnimation_HEIGHT 16
#define TileAnimation_TILE_COUNT 16
#define TileAnimation_PALETTE_COUNT 8
#define TileAnimation_COLORS_PER_PALETTE 4
#define TileAnimation_TOTAL_COLORS 32
#define TileAnimation_MAP_ATTRIBUTES TileAnimation_map_attributes
#define TileAnimation_MAP_ATTRIBUTES_WIDTH 8
#define TileAnimation_MAP_ATTRIBUTES_HEIGHT 2
#define TileAnimation_MAP_ATTRIBUTES_PACKED_WIDTH 8
#define TileAnimation_MAP_ATTRIBUTES_PACKED_HEIGHT 2

BANKREF_EXTERN(TileAnimation)

extern const palette_color_t TileAnimation_palettes[32];
extern const uint8_t TileAnimation_tiles[256];

extern const unsigned char TileAnimation_map[16];
extern const unsigned char TileAnimation_map_attributes[16];

#endif