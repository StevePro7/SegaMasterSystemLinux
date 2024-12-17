#include <stdbool.h>
#include "montylib.h"
#include "resources.h"
#include "../banks/bank2.h" 
#include "../banks/bank3.h"
#include "../banks/bank4.h"
#include "../engine/spriteengine.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_sms_manager.h"
unsigned int scroll_x;
unsigned int scroll_y;

void load_logo_assets()
{
	devkit_SMS_mapROMBank(logo1985tiles_bin_bank);
    devkit_SMS_loadTiles(logo1985tiles_bin, 0, logo1985tiles_bin_size);
    devkit_SMS_loadTileMap(0, 0, logo1985tilemap_bin, logo1985tilemap_bin_size);
}

void load_logo_halfpalette()
{
	devkit_SMS_loadBGPaletteHalfBrightness(logo1985palette_bin);
}

void load_logo_fullpalette()
{
	devkit_SMS_loadBGPalette(logo1985palette_bin);
}

void load_fnaclogo_assets()
{
	devkit_SMS_mapROMBank(fnaclogotiles_psgcompr_bank);
    devkit_SMS_loadPSGaidencompressedTiles(fnaclogotiles_psgcompr,0);
    devkit_SMS_loadTileMap(0, 0, fnaclogotilemap_bin, fnaclogotilemap_bin_size);
}

void load_fnaclogo_halfpalette()
{
	devkit_SMS_mapROMBank(fnaclogopalette_bin_bank);
	devkit_SMS_loadBGPaletteHalfBrightness(fnaclogopalette_bin);
}

void load_fnaclogo_fullpalette()
{
	devkit_SMS_mapROMBank(fnaclogopalette_bin_bank);
	devkit_SMS_loadBGPalette(fnaclogopalette_bin);
}

void load_presentation_assets() {
	devkit_SMS_mapROMBank(gatopresentaciontiles_psgcompr_bank);
    devkit_SMS_loadPSGaidencompressedTiles(gatopresentaciontiles_psgcompr,0);
    devkit_SMS_loadTileMap(0, 0, gatopresentaciontilemap_bin, gatopresentaciontilemap_bin_size);	
}

void load_presentation_halfpalette() {
	devkit_SMS_mapROMBank(gatopresentacionpalette_bin_bank);
	devkit_SMS_loadBGPaletteHalfBrightness(gatopresentacionpalette_bin);
}

void load_presentation_fullpalette() {
	devkit_SMS_mapROMBank(gatopresentacionpalette_bin_bank);
	devkit_SMS_loadBGPalette(gatopresentacionpalette_bin);
}

void load_level1_assets() {
	devkit_SMS_mapROMBank(level1_palette_bin_bank);
	devkit_SMS_loadBGPalette(level1_palette_bin);
    devkit_SMS_loadTiles(level1_tiles_bin,0, level1_tiles_bin_size);
    devkit_SMS_mapROMBank(player_palette_bin_bank);
    devkit_SMS_loadSpritePalette(player_palette_bin);
}

void init_level1_scroll() {
	scroll_x = 0;
	scroll_y = 0;
	devkit_SMS_mapROMBank(level1_metatiles_bin_bank);
	init_scroll(&level1_scrolltable_bin, &level1_metatiles_bin, scroll_x, scroll_y);
}

void update_scroll(signed char delta_x, signed char delta_y) {
	devkit_SMS_mapROMBank(level1_metatiles_bin_bank);
	move_scroll(delta_x, delta_y);
}

unsigned int get_scroll_position_x() {
	return get_scroll_x();
}

unsigned int get_scroll_position_y() {
	return get_scroll_y();
}


void update_resources()
{
	updateTiles();
	updateAnimations();
	drawEntities();
}

void load_background_blackpalette()
{
	devkit_SMS_zeroBGPalette();
}

void load_system_font()
{
	devkit_SMS_mapROMBank(systemfont_psgcompr_bank);
	devkit_SMS_loadPSGaidencompressedTiles(systemfont_psgcompr,0);
}

void print_debug_info()
{
	unsigned char i;
	i = 0;
	//print_unsigned_char(entitylist[i]->characterData->animationlist[entitylist[i]->currentAnimation].framelist[entitylist[i]->currentFrame].frame_time);
}

void print_unsigned_char(unsigned char number)
{
	unsigned char tmpHundreds, tmpTens, tmpUnits;
	devkit_SMS_setNextTileatXY(1,0);
	tmpHundreds = number / 100;
	devkit_SMS_setTile(96 + tmpHundreds);
	tmpTens = (number - (tmpHundreds * 100)) / 10;
	devkit_SMS_setTile(96 + tmpTens);
	tmpUnits = (number - (tmpHundreds * 100) - (tmpTens * 10));
	devkit_SMS_setTile(96 + tmpUnits);
}

void print_signed_char(signed char number)
{
	unsigned char tmpHundreds, tmpTens, tmpUnits;
	devkit_SMS_setNextTileatXY(1,0);
	if(number < 0) {
		devkit_SMS_setTile(93);
		number = number * -1;	
	}
	tmpHundreds = number / 100;
	devkit_SMS_setTile(96 + tmpHundreds);
	tmpTens = (number - (tmpHundreds * 100)) / 10;
	devkit_SMS_setTile(96 + tmpTens);
	tmpUnits = (number - (tmpHundreds * 100) - (tmpTens * 10));
	devkit_SMS_setTile(96 + tmpUnits);	
}