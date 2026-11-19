README
17-Nov-2026

tl;dr
I replicate all code from original but I got black screen
i.e.
no scrolling

What worked was this line in the code:

	SMS_setLineCounter( 0x7f );
	SMS_setFrameInterruptHandler( game_frame_interrupt );

	SMS_VDPturnOnFeature( VDPFEATURE_FRAMEIRQ );

	SMS_setLineInterruptHandler( game_line_interrupt );
	SMS_enableLineInterrupt();
	SMS_displayOn();
}


The build files already show a likely difference: the reference Makefile links a separate devkitSMS toolchain/library, while this workspace’s build.bat links its own SMSlib.lib and CRT0. I’ll compare those inputs read-only; that can explain why the same screen code starts with different VDP interrupt state.


REMEMBER on Notes02.md

I had this


Black screen on Emulicious

Cause: the devkit startup code only clears about 254 bytes of RAM from $C000. I had moved the SDCC variables up to $C620 to leave room for the original game's RAM, so SMSlib's own variables were never cleared. That includes the interrupt handler pointers. Emulators that zero RAM hid this. Emulicious and real hardware don't, so the first interrupt jumped to a garbage address.
Fix: I added dev/crt0_sms.s, a copy of the devkit startup file whose only change is clearing $C000–$DFEE. The Makefile builds and links it.
Test: I filled RAM with random bytes before power-on and ran six seeds. All six boot to identical frames.



But the issue before seemed to be resolved by adding this
dev/crt0_sms.s

Whereas today the solution seemed to be this
SMS_VDPturnOnFeature( VDPFEATURE_FRAMEIRQ );


Therefore I may need further research here to understand the exact interaction between the devkit startup code, SMSlib's RAM usage, and the VDP interrupt features, and why enabling the frame IRQ resolves the black screen issue.