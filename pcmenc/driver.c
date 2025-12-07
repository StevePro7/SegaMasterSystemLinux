#include <sms.h>
#include "sample_manager.h"

// Example PCMENC asset:
extern const unsigned char crash_pcmenc[];

void main(void)
{
    SMS_init();
    SMS_displayOn();

    engine_sample_manager_play(crash_pcmenc);

    while (1)
    {
        engine_sample_manager_update();   // <- MUST be called every frame
        SMS_waitForVBlank();             // game logic here
    }
}
