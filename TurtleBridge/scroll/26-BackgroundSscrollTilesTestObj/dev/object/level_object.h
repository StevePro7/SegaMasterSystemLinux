#ifndef _LEVEL_OBJECT_H_
#define _LEVEL_OBJECT_H_

typedef struct tag_struct_level_object
{
	unsigned char planeA_index;
	unsigned char planeA_count;
	unsigned char planeA_total;
	unsigned char planeA_type;
	unsigned char planeA_data;
	unsigned char planeA_wide;
	unsigned char planeA_repeat;
	unsigned char planeA_section;
	
	unsigned char planeB_index;
	unsigned char planeB_count;
	unsigned char planeB_type;
	unsigned char planeB_data;

} struct_level_object;

extern const unsigned int planeA_object_column[];
extern const unsigned char planeA_object_object[];
extern const unsigned char planeA_object_metadata[];

extern const unsigned int planeB_object_column[];
extern const unsigned char planeB_object_object[];
extern const unsigned char planeB_object_metadata[];

extern const unsigned char level_object_type[];
extern const unsigned char level_object_sect[];

#endif//_LEVEL_OBJECT_H_