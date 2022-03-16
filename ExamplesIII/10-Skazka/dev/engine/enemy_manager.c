#include "enemy_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "../banks/fixedbank.h"
#include <stdlib.h>

// Global variable.
struct_enemy_object global_enemy_object;

unsigned char hplo_num[ MAX_ENEMIES ] = { 10, 10, 25, 25, 35 };
unsigned char ax_num[ MAX_ENEMIES ] = { 1, 1, 2, 2, 3 };
unsigned char gldo_num[ MAX_ENEMIES ] = { 5, 5, 10, 10, 15 };
unsigned char xpo_num[ MAX_ENEMIES ] = { 2, 2, 4, 4, 10 };

void engine_enemy_manager_init()
{
	struct_enemy_object *eo = &global_enemy_object;
	eo->hplo = 0;
	eo->ax = 0;
	eo->gldo = 0;
	eo->xpo = 0;
}

void engine_enemy_manager_load()
{
	struct_enemy_object *eo = &global_enemy_object;
	unsigned char index = rand() % MAX_ENEMIES;

	index = 1;

	eo->index = index;
	eo->hplo = hplo_num[ index ];
	eo->ax = ax_num[ index ];
	eo->gldo = gldo_num[ index ];
	eo->xpo = xpo_num[ index ];
}

void engine_enemy_manager_draw()
{
	struct_enemy_object *eo = &global_enemy_object;
	engine_font_manager_text( ( unsigned char * ) enemy_texts[ eo->index ], LEFT_X + 16, ENEMY_ROW );
}