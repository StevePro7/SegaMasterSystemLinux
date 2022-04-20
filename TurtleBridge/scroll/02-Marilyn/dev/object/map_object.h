#ifndef _MAP_OBJECT_H_
#define _MAP_OBJECT_H_

typedef struct tag_struct_map_object
{
	char *level_data;
	char *next_row;
	char background_y;
	char lines_before_next;
	char scroll_y;

} struct_map_object;


#endif//_MAP_OBJECT_H_