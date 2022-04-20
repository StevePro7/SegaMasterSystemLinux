#include "map_manager.h"
#include "global_manager.h"

// Global variable.
struct_map_object global_map_object;

static void decompress_map_row( char *buffer );

void engine_map_manager_init( char *level_data )
{
	struct_map_object *map_data = &global_map_object;
	map_data->level_data = level_data;
	map_data->next_row = level_data;
	map_data->background_y = SCROLL_CHAR_H - 2;
	map_data->lines_before_next = 0;
	map_data->scroll_y = 0;
}

void engine_map_manager_update()
{
}

void engine_map_manager_draw_map_screen()
{
	struct_map_object *map_data = &global_map_object;
	map_data->background_y = SCREEN_CHAR_H - 2;

	while( map_data->background_y < SCREEN_CHAR_H )
	{
		engine_map_manager_draw_map_row();
	}
}

void engine_map_manager_draw_map_row()
{

}

static void decompress_map_row( char *buffer )
{
	struct_map_object *map_data = &global_map_object;
	char *o, *d;
	char remaining, ch, repeat;

	o = map_data->next_row;
	d = buffer;
	for( remaining = 16; remaining; ) {
		ch = *o;
		o++;

		if( ch & 0x80 ) {
			// Has repeat flag: repeat n times
			repeat = ch & 0x7F;
			ch = *o;
			o++;

			for( ; repeat && remaining; repeat--, remaining-- ) {
				*d = ch;
				d++;
			}
		}
		else {
			// Just use the char
			*d = ch;
			d++;
			remaining--;
		}
	}

	map_data->next_row = o;
}