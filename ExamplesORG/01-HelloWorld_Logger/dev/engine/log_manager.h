#ifndef _LOG_MANAGER_H_
#define _LOG_MANAGER_H_

void log_open();
void log_close();
void log_debug( const char* message, ... );
void log_info( const char* message, ... );
void log_error( const char* message, ... );


#endif//_LOG_MANAGER_H_