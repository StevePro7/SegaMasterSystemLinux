#ifndef _ENUM_MANAGER_H_
#define _ENUM_MANAGER_H_

typedef enum tag_enum_screen_type
{
	screen_type_none = 0,
	screen_type_start = 1,
	screen_type_music = 2,
	screen_type_sound = 3,
	screen_type_joint = 4,

} enum_screen_type;

typedef enum tag_enum_play_type
{
	play_type_none = 0,
	play_type_start = 1,
	play_type_pause = 2,
	play_type_resume = 3,
	play_type_stop = 4,

} enum_play_type;

#endif//_ENUM_MANAGER_H_