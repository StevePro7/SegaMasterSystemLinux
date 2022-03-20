#include "boss_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enemy_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/fight_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/player_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

static unsigned char select_type;

static unsigned char event_stage;
static unsigned char boss_damage;
static unsigned char player_damage;

void screen_boss_screen_load()
{
	unsigned char row;
//	unsigned char idx;

	select_type = select_type_boss;
	row = 1;

	engine_boss_manager_load();
	engine_player_manager_boss();

	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 0, row + 9 );

	//engine_font_manager_text( "BOSS SCREEN!!", 4, 10 );
	//engine_select_manager_load( select_type, LEFT_X + 5, row, 2 );

	engine_font_manager_text( LOCALE_FIGHT_MSG1, LEFT_X + 3, FIGHT_ROW + 3 );
	engine_font_manager_text( LOCALE_BOSSX_MSG2, LEFT_X + 17, FIGHT_ROW + 3 );

	engine_player_manager_hplo();
	engine_enemy_manager_hplo();

	engine_boss_manager_draw( 10, 1 );
	devkit_SMS_displayOn();

	
}

void screen_boss_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_boss;
}
