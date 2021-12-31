#include "log_manager.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <time.h>

#ifdef _CONSOLE
#pragma warning( disable : 4996 )
#else

#endif

FILE *file;

void log_open()
{
	if( ( file = fopen( "stevepro.log", "w" ) ) == NULL ) 
	{
		printf( "Cannot open test.txt file.\n" );
		exit( 1 );
	}
}

void log_close()
{
	if( NULL != file )
	{
		fclose( file );
	}

	file = NULL;
}

// https://stackoverflow.com/questions/6508461/logging-library-for-c/12674287
// https://tuttlem.github.io/2012/12/08/simple-logging-in-c.html
void log_format( const char* tag, const char* message, va_list args )
{
	time_t now;
	time( &now );
	char * date = ctime( &now );
	date[ strlen( date ) - 1 ] = '\0';
	//printf( "%s [%s] ", date, tag );
	//vprintf( message, args );
	//printf( "\n" );

	fprintf( file, "%s [%s] ", date, tag );
	vfprintf( file, message, args );
	fprintf( file, "\n" );
	fflush( file );
}

void log_error( const char* message, ... )
{
	va_list args;
	va_start( args, message );
	log_format( "error", message, args );
	va_end( args );
}

void log_info( const char* message, ... )
{
	va_list args;
	va_start( args, message );
	log_format( "info", message, args );
	va_end( args );
}

void log_debug( const char* message, ... )
{
	va_list args;
	va_start( args, message );
	log_format( "debug", message, args );
	va_end( args );
}

