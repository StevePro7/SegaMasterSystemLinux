#ifndef _LEVEL_OBJECT_H_
#define _LEVEL_OBJECT_H_

typedef struct tag_struct_level_object
{
	unsigned char level_index;
	unsigned char planeA_type;
	unsigned char planeB_type;

} struct_level_object;

extern const unsigned int level_object_column[];
extern const unsigned char level_object_object[];
extern const unsigned char level_object_metadata[];


extern const unsigned char level_object_type[];
extern const unsigned char level_object_sect[];

#endif//_LEVEL_OBJECT_H_