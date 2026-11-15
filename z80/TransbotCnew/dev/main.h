#ifndef __MAIN__
#define __MAIN__

#include <stdbool.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#ifdef _CONSOLE
#include "../tmp/SMSlib.h"
#include "../tmp/PSGlib.h"
#else
#include "../lib/SMSlib.h"
#include "../lib/PSGlib.h"
#endif

#include "assets.h"
#include "rle.h"

#endif//__MAIN__