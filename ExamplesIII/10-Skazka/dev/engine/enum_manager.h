#ifndef _ENUM_MANAGER_H_
#define _ENUM_MANAGER_H_

typedef enum tag_enum_screen_type
{
	screen_type_none = 0,
	screen_type_splash = 1,
	screen_type_title = 2,
	screen_type_intro = 3,
	screen_type_stats = 4,
	screen_type_forest = 5,
	screen_type_shop = 6,
	screen_type_rest = 7,
	screen_type_talk = 8,
	screen_type_fight = 9,
	screen_type_menu = 10,
	screen_type_over = 11,
	screen_type_detail = 12,
	screen_type_record = 13,
	screen_type_select = 14,
	screen_type_test = 15,
	screen_type_func = 16,

} enum_screen_type;

typedef enum tag_enum_input_type
{
	input_type_up = 0x01,
	input_type_down = 0x02,
	input_type_left = 0x04,
	input_type_right = 0x08,
	input_type_fire1 = 0x10,
	input_type_fire2 = 0x20,

} enum_input_type;

typedef enum tag_enum_select_type
{
	select_type_main = 0,
	select_type_stats = 1,
	select_type_play = 1,
	select_type_battle = 2,

} enum_select_type;

typedef enum tag_enum_weapon_type
{
	weapon_type_none = 0,
	weapon_type_sword = 1,
	weapon_type_axe = 2,
	weapon_type_kolchuga = 3,
	weapon_type_tegilay = 4,
	weapon_type_life = 5,

} enum_weapon_type;

typedef enum tag_enum_armor_type
{
	armor_type_none = 0,
	armor_type_tegilay = 1,
	armor_type_kolchuga = 2,

} enum_armor_type;

typedef enum tag_enum_life_type
{
	life_type_none = 0,
	life_type_oneup = 1,

} enum_enum_life_type;

#endif//_ENUM_MANAGER_H_
