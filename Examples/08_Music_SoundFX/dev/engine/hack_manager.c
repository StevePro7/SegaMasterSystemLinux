#include "hack_manager.h"
#include "global_manager.h"

#define PEEK( addr)			(* ( unsigned char *)( addr ) )
#define POKE( addr, data )	(* ( unsigned char *)( addr ) = ( data ) )

#define HACKER_START		0x0050

// Global variable.
struct_hack_object global_hack_object;

void engine_hack_manager_init()
{
	struct_hack_object *ho = &global_hack_object;

	ho->hack_music = 0;
	ho->hack_sound = 0;

#ifndef _CONSOLE

	ho->hack_music = PEEK( HACKER_START + 0 );		// 0x0050		// 0=music on otherwise off.
	ho->hack_sound = PEEK( HACKER_START + 1 );		// 0x0050		// 0=sound on otherwise off.

#endif

}

void engine_hack_manager_update()
{
	struct_hack_object *ho = &global_hack_object;

	// Invert.
	ho->hack_music = !ho->hack_music;
	ho->hack_sound = !ho->hack_sound;
}