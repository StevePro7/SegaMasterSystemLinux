#include "gamer_manager.h"
#include "enum_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include <stdlib.h>

// Global variable.
struct_gamer_object global_gamer_object;

static void calculate_tile();

void engine_gamer_manager_load()
{
	struct_gamer_object *go = &global_gamer_object;
	unsigned char pathIndex = 0;

	go->gamerX = 48;
	go->gamerY = 32;
	go->minX = 32;
	go->minY = 16;
	go->maxX = 176;
	go->maxY = 160;
	go->velocity = 1;
	go->color = 0;
	go->frame = 0;
	go->base = SPRITE_TILES;
	calculate_tile();
}

void engine_gamer_manager_update()
{
	struct_gamer_object *go = &global_gamer_object;
	unsigned char input;
	unsigned char speed;
	unsigned char delta = 1;
	signed char dx = 0;
	signed char dy = 0;

	speed = engine_input_manager_move_fire1();
	if( speed )
	{
		delta = 2;
	}

	input = engine_input_manager_move_left();
	if( input )
	{
		dx = -delta;
	}
	else
	{
		input = engine_input_manager_move_right();
		if( input )
		{
			dx = delta;
		}
	}

	input = engine_input_manager_move_up();
	if( input )
	{
		dy = -delta;
	}
	else
	{
		input = engine_input_manager_move_down();
		if( input )
		{
			dy = delta;
		}
	}

	if( 0 == dx && 0 == dy )
	{
		return;
	}

	if( 0 != dx )
	{
		go->gamerX += dx;
		if( go->gamerX < go->minX )
		{
			go->gamerX = go->minX;
		}
		else if( go->gamerX > go->maxX )
		{
			go->gamerX = go->maxX;
		}
	}
	if( 0 != dy )
	{
		go->gamerY += dy;
		if( go->gamerY < go->minY )
		{
			go->gamerY = go->minY;
		}
		else if( go->gamerY > go->maxY )
		{
			go->gamerY = go->maxY;
		}
	}
}

void engine_gamer_manager_draw()
{
	struct_gamer_object *go = &global_gamer_object;
	engine_sprite_manager_draw( go->gamerX, go->gamerY, go->tile );
}

static void calculate_tile()
{
	struct_gamer_object *go = &global_gamer_object;
	go->tile = go->base + ( ( go->color * 2 ) + go->frame ) * 2;
}