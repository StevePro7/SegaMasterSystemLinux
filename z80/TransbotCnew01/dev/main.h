#ifndef __MAIN__
#define __MAIN__

#include <stdbool.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#ifndef __SMS_LIB_H__
#ifdef _CONSOLE
#include "../tmp/SMSlib.h"
#include "../tmp/PSGlib.h"
#else
#include "../lib/SMSlib.h"
#include "../lib/PSGlib.h"
#endif
#endif

#include "content/assets.h"
#include "engine/rle_manager.h"

#endif//__MAIN__