#ifndef _ENUM_MANAGER_H_
#define _ENUM_MANAGER_H_

typedef enum tag_enum_input_type
{
	input_type_up    = 0x01,
	input_type_down  = 0x02,
	input_type_left	 = 0x04,
	input_type_right = 0x08,
	input_type_fire1 = 0x10,
	input_type_fire2 = 0x20,

} enum_input_type;

typedef enum tag_enum_tree_type
{
	tree_type_avoid = 0,
	tree_type_death = 1,
	tree_type_funky = 2,

} enum_tree_type;

#endif//_ENUM_MANAGER_H_