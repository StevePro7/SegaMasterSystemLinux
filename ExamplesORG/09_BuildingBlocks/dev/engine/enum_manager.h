#ifndef _ENUM_MANAGER_H_
#define _ENUM_MANAGER_H_

typedef enum tag_enum_screen_type
{
	screen_type_none = 0,
	screen_type_start = 1,
	screen_type_title = 2,
	screen_type_ready = 3,
	screen_type_play = 4,

} enum_screen_type;

typedef enum tag_enum_direction_type
{
	direction_none = 0,
	direction_up = 1,
	direction_down = 2,
	direction_left = 3,
	direction_right = 4,

} enum_direction_type;

typedef enum tag_enum_lifecycle_type
{
	lifecycle_idle = 0,
	lifecycle_move = 1,

} enum_lifecycle_type;

typedef enum tag_enum_enemy_type
{
	enemy_pro = 0,
	enemy_adi = 1,
	enemy_suz = 2,

} enum_enemy_type;

#endif//_ENUM_MANAGER_H_