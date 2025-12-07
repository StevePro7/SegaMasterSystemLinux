#ifndef SAMPLE_MANAGER_H
#define SAMPLE_MANAGER_H

void engine_sample_manager_init(const void *psginit);
void engine_sample_manager_play(const void *sample);
void engine_sample_manager_update(void);
unsigned char engine_sample_manager_isPlaying(void);
void engine_sample_manager_stop(void);

#endif
