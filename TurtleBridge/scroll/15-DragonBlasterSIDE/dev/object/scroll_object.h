#ifndef _SCROLL_OBJECT_H_
#define _SCROLL_OBJECT_H_

typedef struct tag_struct_scroll_object
{
	unsigned char *level_data;
	unsigned char *next_row;
	unsigned char background_y;

	unsigned char scrollleft;
	unsigned char scrollRight;
	unsigned char scrollRightDivided8;

	unsigned char column_X;
	unsigned int scroll_X;

} struct_scroll_object;

#endif//_SCROLL_OBJECT_H_