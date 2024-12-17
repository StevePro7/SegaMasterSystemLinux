#include "../banks/bank2.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_gsl_manager.h"

signed char scrollXOffset = 0;
signed char scrollYOffset = 0;

void processUpKey()
{
	unsigned int currenty = devkit_GSL_getCurrentY();
	scrollXOffset = 0;
	if (currenty > 1)
	{
		scrollYOffset = -2;
	}
	else
	{
		scrollYOffset = 0;
	}
}

void processDownKey()
{
	unsigned int currenty = devkit_GSL_getCurrentY();
	scrollXOffset = 0;
	if (currenty < devkit_GSL_getMapHeightInPixels() - 3)
	{
		scrollYOffset = 2;
	}
	else
	{
		scrollYOffset = 0;
	}
}

void processLeftKey() 
{
	unsigned int currentx = devkit_GSL_getCurrentX();
	scrollYOffset = 0;
	if (currentx > 1)
	{
		scrollXOffset = -2;
	}
	else
	{
		scrollXOffset = 0;
	}
}

void processRightKey() 
{
	unsigned int currentx = devkit_GSL_getCurrentX();
	scrollYOffset = 0;
	if (currentx < devkit_GSL_getMapWidthInPixels() - 3)
	{
		scrollXOffset = 2;
	}
	else
	{
		scrollXOffset = 0;
	}
}

void processUserInput(unsigned int ks)
{
	scrollXOffset = 0;
	scrollYOffset = 0;
	
	if (ks & devkit_PORT_A_KEY_UP())
	{
		processUpKey();
		return;
	}
	
	else if (ks & devkit_PORT_A_KEY_DOWN())
	{
		processDownKey();
		return;
	}
	
	else if (ks & devkit_PORT_A_KEY_LEFT())
	{
		processLeftKey();
		return;
	}
	
	else if (ks & devkit_PORT_A_KEY_RIGHT())
	{
		processRightKey();
		return;
	}
}

void main(void) 
{
	unsigned int ks; 
	
	devkit_SMS_VRAMmemset(0x4000, 0x00, 0x4000);
	devkit_SMS_VRAMmemset(0xC000, 0x00, 0x0020);
	devkit_SMS_loadTiles(&level1_tiles_bin, 0, level1_tiles_bin_size);
	devkit_SMS_loadBGPalette(&level1_palette_bin);

	devkit_GSL_initializeMap(&level1_scrolltable_bin, &level1_metatiles_bin);
	devkit_GSL_positionWindow(0,0);
	devkit_GSL_refreshVDP();
	
	devkit_SMS_VDPturnOnFeature(devkit_VDPFEATURE_HIDEFIRSTCOL());
	devkit_SMS_displayOn();
	
	for(;;)
	{
		ks = devkit_SMS_getKeysStatus(); 
		processUserInput(ks);
		devkit_GSL_scroll(scrollXOffset,scrollYOffset);
		devkit_SMS_waitForVBlank(); 
		devkit_GSL_VBlank();
	}
	devkit_SMS_displayOff();
}