

void GSL_initializeMap(void *scrolltable, void *metatiles) {}
void GSL_positionWindow(unsigned int X, unsigned int Y) {}
unsigned int * GSL_metatileLookup(unsigned int x, unsigned int y) { return 0; }
void GSL_tileLookup(unsigned int x, unsigned int y) {}
void GSL_refreshVDP() {}
void GSL_scroll(char x, char y) {}
void GSL_VBlank() {}
void GSL_metatileUpdate() {}
void GSL_metatileUpdateCustom(unsigned int x, unsigned int y, unsigned int offset) {}
unsigned int GSL_getMapWidthInPixels() { return 0; }
unsigned int GSL_getMapHeightInPixels() { return 0; }
unsigned int GSL_getMapWidthInMetatiles() { return 0; }
unsigned int GSL_getMapHeightInMetatiles() { return 0; }
unsigned int GSL_getScrolltableSize() { return 0; }
unsigned int GSL_getCurrentX() { return 0; }
unsigned int GSL_getCurrentY() { return 0; }
unsigned char GSL_getCollisionCount() { return 0; }
unsigned char * GSL_getScrolltableAddress() { return 0; }
