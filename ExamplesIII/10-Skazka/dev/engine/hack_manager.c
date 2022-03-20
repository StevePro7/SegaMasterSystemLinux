#include "hack_manager.h"

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

	ho->hack_delays = 0;
	ho->hack_nodead = 0;
	ho->hack_currxp = 0;
	ho->hack_goldno = 0;
	ho->hack_weapon = 0;
	ho->hack_armors = 0;
	ho->hack_oneups = 0;
	ho->hack_musics = 0;
	ho->hack_sounds = 0;
}

void engine_hack_manager_load()
{
	struct_hack_object *ho = &global_hack_object;

#ifndef _CONSOLE

	ho->hack_delays = PEEK( HACKER_START - 2 );			// 0x004E		// Used to speed through any game delay.
	ho->hack_nodead = PEEK( HACKER_START - 1 );			// 0x004F		// Non-zero value enables invincibility.
	ho->hack_currxp = PEEK( HACKER_START + 0 );			// 0x0050		// Non-zero sets current experience pts.
	ho->hack_goldno = PEEK( HACKER_START + 1 );			// 0x0051		// Non-zero sets current gold available.
	ho->hack_weapon = PEEK( HACKER_START + 2 );			// 0x0052		// Set value to 1 or 2 for stock else 0.
	ho->hack_armors = PEEK( HACKER_START + 3 );			// 0x0053		// Set value to 1 or 2 for armor else 0.
	ho->hack_oneups = PEEK( HACKER_START + 4 );			// 0x0054		// Set value to 1=Life otherwise 0=None.
	ho->hack_musics = PEEK( HACKER_START + 5 );			// 0x0055		// Set 0=Music to play otherwise silent.
	ho->hack_sounds = PEEK( HACKER_START + 6 );			// 0x0056		// Set 0=Sound to play otherwise silent.

#endif
}

void engine_hack_manager_invert()
{
	struct_hack_object *ho = &global_hack_object;

	// Invert default values.
	ho->hack_musics = !ho->hack_musics;
	ho->hack_sounds = !ho->hack_sounds;
}