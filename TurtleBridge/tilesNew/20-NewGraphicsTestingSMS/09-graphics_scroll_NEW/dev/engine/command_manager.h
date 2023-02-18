#ifndef _COMMAND_MANAGER_H_
#define _COMMAND_MANAGER_H_

void engine_command_manager_init();
unsigned char engine_command_manager_build( unsigned char state, unsigned char input1, unsigned char input2, unsigned char input3, unsigned char input4, unsigned char input5, unsigned char input6 );
//unsigned char engine_command_manager_buildX( unsigned char  state, unsigned char input1, unsigned char input2, unsigned char input3, unsigned char input4, unsigned char input5, unsigned char input6 );

#endif//_COMMAND_MANAGER_H_