#include "hack_manager.h"
#include "global_manager.h"
#include "enum_manager.h"

// Global variable.
struct_hack_object global_hack_object;

#define PEEK( addr)			(* ( unsigned char *)( addr ) )
#define POKE( addr, data )	(* ( unsigned char *)( addr ) = ( data ) )

#define HACKER_START		0x0050

// TODO delete this - set only during debugging / play testing
#ifdef _CONSOLE
#else
#pragma disable_warning 110
#pragma disable_warning 126
#endif

void engine_hack_manager_init()
{
	struct_hack_object *ho = &global_hack_object;

	ho->hack_isgod = 0;
	ho->hack_music = 0;
	ho->hack_sound = 0;
	ho->hack_riffs = 0;
	//ho->hack_object_level = 0;
	//ho->hack_object_screen = 0;

	//ho->hack_object_delay_test = 0;
	//ho->hack_object_mydebugger = 0;
	//ho->hack_object_invincibie = 0;
	//ho->hack_object_full_boost = 0;

	//ho->hack_object_trees_type = 0;
	//ho->hack_object_exits_type = 0;
	//ho->hack_object_difficulty = 0;
	//ho->hack_object_pace_speed = 0;

	//ho->hack_object_world_data = 0;
	//ho->hack_object_round_data = 0;
	//ho->hack_object_music_data = 0;
	//ho->hack_object_sound_data = 0;

	//// Zero means enable enemy.
	//ho->hack_object_enemy_move[ actor_type_pro ] = 0;
	//ho->hack_object_enemy_move[ actor_type_adi ] = 0;
	//ho->hack_object_enemy_move[ actor_type_suz ] = 0;
}

void engine_hack_manager_load()
{
	struct_hack_object *ho = &global_hack_object;

	// TODO correct the addresses
#ifndef _CONSOLE

	//ho->hack_riffs = PEEK( HACKER_START + 6 );			// 0x0056		// Set start World no currently 1 to 10.
	//ho->hack_isgod = PEEK( HACKER_START + 7 );			// 0x0057		// Set start Round no currently 1 to 10.
	//ho->hack_music = PEEK( HACKER_START + 8 );			// 0x0058		// Set 0=Music to play otherwise silent.
	//ho->hack_sound = PEEK( HACKER_START + 9 );			// 0x0059		// Set 0=Sound to play otherwise silent.

#endif

	// Invert default values.
	ho->hack_music = !ho->hack_music;
	ho->hack_sound = !ho->hack_sound;
	ho->hack_riffs = !ho->hack_riffs;

	// TODO delete.
	ho->hack_music = 0;
	ho->hack_sound = 0;
	ho->hack_riffs = !ho->hack_riffs;
}
