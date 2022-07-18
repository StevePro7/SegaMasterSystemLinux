#ifndef _AUDIO_MANAGER_H_
#define _AUDIO_MANAGER_H_

void engine_audio_manager_init();
void engine_audio_manager_play_sound( unsigned char index );
void engine_audio_manager_play_music( unsigned char index );
//void engine_audio_manager_play_music( unsigned char index );
/*
void engine_sound_manager_play( unsigned char index );
void engine_sound_manager_fight();
void engine_sound_manager_kill();
void engine_music_manager_play( unsigned char index );

*/
void engine_music_manager_beat();

#endif//_AUDIO_MANAGER_H_
