#include "log_manager.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <time.h>

#ifdef _CONSOLE
#pragma warning( disable : 4996 )
#else
#pragma disable_warning 85
#endif

// Private helper objects.
static void log_format( const char* tag, const char* message, va_list args );
#ifdef _CONSOLE
static FILE *file;
#endif


void log_open()
{
#ifdef _CONSOLE
	if( ( file = fopen( "stevepro.log", "w" ) ) == NULL )
	{
		printf( "Cannot open test.txt file.\n" );
		exit( 1 );
	}
#endif
}

void log_close()
{
#ifdef _CONSOLE

	if( NULL != file )
	{
		fclose( file );
	}

	file = NULL;
#endif
}

void log_debug( const char* message, ... )
{
	va_list args;
	va_start( args, message );
	log_format( "debug", message, args );
	va_end( args );
}

void log_info( const char* message, ... )
{
	va_list args;
	va_start( args, message );
	log_format( "info", message, args );
	va_end( args );
}

void log_error( const char* message, ... )
{
	va_list args;
	va_start( args, message );
	log_format( "error", message, args );
	va_end( args );
}


// Private helper objects.
// https://stackoverflow.com/questions/6508461/logging-library-for-c/12674287
// https://tuttlem.github.io/2012/12/08/simple-logging-in-c.html
static void log_format( const char* tag, const char* message, va_list args )
{
#ifdef _CONSOLE
	time_t now;
	time( &now );
	char * date = ctime( &now );
	date[ strlen( date ) - 1 ] = '\0';

	fprintf( file, "%s [%s] ", date, tag );
	vfprintf( file, message, args );
	fprintf( file, "\n" );
	fflush( file );
#endif
}
