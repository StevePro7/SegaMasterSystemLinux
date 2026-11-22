#include "game.h"

// Sega header.
#ifdef _CONSOLE
#else
SMS_EMBED_SEGA_ROM_HEADER( productCode, revision );
SMS_EMBED_SDSC_HEADER( verMaj, verMin, dateYear, dateMonth, dateDay, author, name, descr );
#endif
