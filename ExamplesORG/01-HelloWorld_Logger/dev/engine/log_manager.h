#ifndef _LOG_MANAGER_H_
#define _LOG_MANAGER_H_

void engine_log_manager_open();
void engine_log_manager_close();
void engine_log_manager_debug( const char* message, ... );
void engine_log_manager_infos( const char* message, ... );
void engine_log_manager_error( const char* message, ... );


#endif//_LOG_MANAGER_H_