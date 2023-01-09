#ifndef _SCROLL_OBJECT_H_
#define _SCROLL_OBJECT_H_

typedef struct tag_struct_scroll_object
{
	// OLD
	//unsigned char scroll_left;
	//unsigned char scroll_right;
	//unsigned char scrollRightDivided8;

	//unsigned char scroll;
	unsigned char scrollRight;
	//unsigned int offset_left;
	unsigned int offset_right;

	// NEW
	unsigned char scroll_x[ 6 ];
	//unsigned int scroll_x[ 6 ];
	unsigned char scroll_half;
	unsigned char lineCnt;

} struct_scroll_object;

#endif//_SCROLL_OBJECT_H_