#include "playstage.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../banks/fixedbank.h"
#include "../funcs.h"
#include "../vars.h"

void InitPlayStage()
{
	// Save continue stage, for continue :)
	laststagenum = stagenum;

	//// Init stage
	//InitStage();

	//// Init script
	//InitScripts();

	//// Enemies set to 0
	//InitEnemies();

	//// And enemy shoots
	//InitEnemyshoots();

	// Lo volvemos a apagar
	devkit_SMS_displayOff();

//	// Scroller
//	InitScroller();
//
//	// Barrom
//	InitBarrom();
//
//	// Let's fill playstage
//	if( stagenum < 6 )
//	{
//		playstage = 1 + ( ( basestage + stagenum ) % 5 );
//	}
//	else
//	{
//		playstage = stagenum;
//	}
//
//	// Last but not least, load custom stage data from array data
//	InitStageData( stagedatamarks[ playstage - 1 ] );
//
//	// For the stage custom code 
//	InitCustomStageData();
//
//	// Init player
//	InitPlayerSprite();
//
//	// Init player shoots
//	InitPlayershoots();
//
//	// Init powerup
//	InitPowerups();
//
//	// Init explosion sprite
//	InitExplosions();
//
//	// Do what we have to do
//	InitPlayer();
//
//	// Lo volvemos a encender
//	devkit_SMS_displayOn();
//
//	// Exit stage flag
//	exitplaystage = 0;
//
//	// To make update at init
//	updateplaystage = 1;
//
//	// We have not pause
//	gamepause = 0;
//
//	// Bucle
//	while( 1 )
//	{
//		// Check for game pause
//		checkgamepause();
//
//		if( gamepause == 0 )
//		{
//			// Update stage
//			UpdateStage();
//
//			// Scroller... note this is processed ***ALWAYS*** to do a sweet effect
//			UpdateScroller();
//
//			// Barrom
//			UpdateBarrom();
//
//			// Alternamos
//			if( stageframe2mod == 0 )
//			{
//				UpdateStagePassA();
//			}
//			else
//			{
//				UpdateStagePassB();
//			}
//
//			// Scripter
//			if( ( stageframe % 16 ) == 0 )
//			{
//				UpdateScripts();
//			}
//
//			// Hay que salirse?
//			if( exitplaystage == 1 )
//			{
//				return;
//			}
//
//			// Update psg
//			UpdatePSG();
//		}
//		else
//		{
//			// Update psg
//			UpdatePSG();
//
//			// Wait
//			devkit_SMS_waitForVBlank();
//
//			// Reset
//			numinterrupts = 0;
//		}
//	}
}
