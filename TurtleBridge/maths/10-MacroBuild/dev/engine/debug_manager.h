#ifndef _DEBUG_MANAGER_H_
#define _DEBUG_MANAGER_H_

#include "font_manager.h"

#define ADI_INFO(__fmt)									\
	char fmt[] = __fmt;									\
	engine_font_manager_draw_text("INFO", 10, 10);		\
	engine_font_manager_draw_text(fmt, 10, 12);			\

#endif//_DEBUG_MANAGER_H_