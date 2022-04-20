#ifndef _SCROLL_OBJECT_H_
#define _SCROLL_OBJECT_H_

typedef struct tag_struct_scroll_object
{
	//unsigned char scroll_left;
	//unsigned char scroll_right;
	unsigned int scroll;
	unsigned int test;


	unsigned char scrollleft;
	unsigned char scrollRight;
	unsigned char scrollRightDivided8;

	//unsigned int offset_left;
	//unsigned int offset_right;

	unsigned char column_X;
	unsigned int scroll_X;

} struct_scroll_object;

#endif//_SCROLL_OBJECT_H_