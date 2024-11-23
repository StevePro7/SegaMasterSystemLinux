#include "screen_manager.h"
#include "global_manager.h"
#include "enum_manager.h"

// Screens
#include "..\screen\none_screen.h"
#include "..\screen\start_screen.h"
//#include "..\screen\music_screen.h"
//#include "..\screen\sound_screen.h"
//#include "..\screen\joint_screen.h"

static void( *load_method[ MAX_SCREEENS ] )();
static void( *update_method[ MAX_SCREEENS ] )( unsigned char *screen_type );

static unsigned char curr_screen_type;
static unsigned char next_screen_type;

void engine_screen_manager_init( unsigned char open_screen_type )
{
	curr_screen_type = screen_type_none;
	next_screen_type = open_screen_type;

	// Set load methods.
	load_method[ screen_type_none ] = screen_none_screen_load;
	load_method[ screen_type_start ] = screen_start_screen_load;
	//load_method[ screen_type_music ] = screen_music_screen_load;
	//load_method[ screen_type_sound ] = screen_sound_screen_load;
	//load_method[ screen_type_joint ] = screen_joint_screen_load;

	// Set update methods.
	update_method[ screen_type_none ] = screen_none_screen_update;
	update_method[ screen_type_start ] = screen_start_screen_update;
	//update_method[ screen_type_music ] = screen_music_screen_update;
	//update_method[ screen_type_sound ] = screen_sound_screen_update;
	//update_method[ screen_type_joint ] = screen_joint_screen_update;
}

void engine_screen_manager_update()
{
	if( curr_screen_type != next_screen_type )
	{
		curr_screen_type = next_screen_type;
		load_method[ curr_screen_type ]();
	}

	update_method[ curr_screen_type ]( &next_screen_type );
}