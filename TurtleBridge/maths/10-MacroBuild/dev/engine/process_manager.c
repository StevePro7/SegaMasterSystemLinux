#include "process_manager.h"
#include "type_manager.h"

int Bar()
{
	unsigned int test = 1;

	STEVEPRO();
	test = 0;

skip_event:
	return test;
}