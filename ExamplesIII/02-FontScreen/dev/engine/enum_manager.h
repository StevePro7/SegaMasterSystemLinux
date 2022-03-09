#ifndef _ENUM_MANAGER_H_
#define _ENUM_MANAGER_H_

typedef enum tag_enum_screen_type
{
	screen_type_none = 0,
	screen_type_splash = 1,
	screen_type_title = 2,
	screen_type_scroll = 3,
	screen_type_select = 4,
	screen_type_record = 5,
	screen_type_detail = 6,
	screen_type_test = 7,
	screen_type_func = 8,

} enum_screen_type;

typedef enum tag_enum_select_type
{
	select_type_main = 0,
	select_type_option = 1,
	select_type_play = 1,
	select_type_battle = 2,

} enum_select_type;

#endif//_ENUM_MANAGER_H_
