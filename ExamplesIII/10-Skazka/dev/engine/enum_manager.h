#ifndef _ENUM_MANAGER_H_
#define _ENUM_MANAGER_H_

typedef enum tag_enum_screen_type
{
	screen_type_none = 0,
	screen_type_splash = 1,
	screen_type_title = 2,
	screen_type_intro = 3,
	screen_type_load = 4,
	screen_type_stats = 5,
	screen_type_forest = 6,
	screen_type_victory = 7,
	screen_type_shop = 8,
	screen_type_talk = 9,
	screen_type_prep = 10,
	screen_type_boss = 11,
	screen_type_complete = 12,
	screen_type_menu = 13,
	screen_type_over = 14,
	screen_type_detail = 15,
	screen_type_record = 16,
	screen_type_select = 17,
	screen_type_test = 18,
	screen_type_func = 19,

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
	select_type_forest = 2,
	select_type_shop = 3,
	select_type_prep = 4,
	select_type_boss = 5,
	select_type_menu = 6,

} enum_select_type;

typedef enum tag_enum_action_type
{
	action_type_forest = 0,
	action_type_shop = 1,
	action_type_rest = 2,
	action_type_talk = 3,
	action_type_boss = 4,
	action_type_menu = 5,

} enum_action_type;

typedef enum tag_enum_weapon_type
{
	weapon_type_none = 0,
	weapon_type_sword = 1,
	weapon_type_axe = 2,

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

typedef enum tag_enum_enemy_type
{
	enemy_type_razboynik = 0,
	enemy_type_hungry_wolf = 1,
	enemy_type_kikimora = 2,
	enemy_type_leshy = 3,
	enemy_type_baby_yaga = 4,
	enemy_type_koschey = 5,

} enum_enemy_type;

typedef enum tag_enum_forest_type
{
	forest_type_select = 0,
	forest_type_decide = 1,
	forest_type_pushon = 2,

} enum_forest_type;

typedef enum tag_enum_fight_type
{
	fight_type_run = 0,
	fight_type_battle = 1,

} enum_fight_type;

typedef enum tag_enum_binary_type
{
	binary_type_yes = 0,
	binary_type_no = 1,

} enum_binary_type;

typedef enum tag_enum_boss_type
{
	boss_type_beg = 0,
	boss_type_battle = 1,

} enum_boss_type;

typedef enum tag_enum_menu_type
{
	menu_type_exit = 0,
	menu_type_restart = 1,
	menu_type_continue = 2,

} enum_menu_type;

#endif//_ENUM_MANAGER_H_
