#include "log_manager.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <time.h>

#ifdef _CONSOLE
#pragma warning( disable : 4024 )
#pragma warning( disable : 4047 )
#pragma warning( disable : 4996 )
#else
#pragma disable_warning 85
#endif

// Private helper objects.
static void log_format( const char* tag, const char* message, va_list args );
#ifdef _CONSOLE
static FILE *file;
#endif


void engine_log_manager_open()
{
#ifdef _CONSOLE
	if( ( file = fopen( "stevepro.log", "w" ) ) == NULL )
	{
		printf( "Cannot open test.txt file.\n" );
		exit( 1 );
	}
#endif
}

void engine_log_manager_close()
{
#ifdef _CONSOLE

	if( NULL != file )
	{
		fclose( file );
	}

	file = NULL;
#endif
}

//void engine_log_manager_datas( unsigned char values, ... )
//{
//	char data[ 2 ] = { 0, 0 };
//	unsigned int quotient = 0;
//	unsigned char remainder = 0;
//	va_list args;
//
//	quotient = values / 10;
//	remainder = values % 10;
//	data[ 0 ] = remainder;
//	data[ 1 ] = quotient;
//
//	const char* message = data;
//
//	va_start( args, message );
//	log_format( "value", message, args );
//	va_end( args );
//}

void engine_log_manager_debug( const char* message, ... )
{
	va_list args;
	va_start( args, message );
	log_format( "debug", message, args );
	va_end( args );
}

void engine_log_manager_infos( const char* message, ... )
{
	va_list args;
	va_start( args, message );
	log_format( "infos", message, args );
	va_end( args );
}

void engine_log_manager_error( const char* message, ... )
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
