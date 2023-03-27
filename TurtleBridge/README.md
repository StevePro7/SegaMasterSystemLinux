# Lil Evel Knievel SMS
Lil Evel Knievel game for the SMS Power! 2023 Competition.

###### RELEASE
Monday, 27th March 2023

###### INTRO
A tribute to the greatest daredevil!
<br />
Lil Evel Knievel defies gravity with his gnarly skate board skills to conquer the original Wonderboy aquazone.

###### TOOLS
- Programming:	devkitSMS
- Compiler		sdcc 4.1.0
- Languages:	C / Z80
- Visual Studio 2015
- Graphics:		BMP2Tile 0.43 / GIMP2 / paint.net
- Music:		pcmenc / VGM2PSG
- Assembler:	WLA-DX
- Emulators:	Emulicious / Fusion / Meka
- Debuggers:	VS Code Emulicious Debugger

###### SOURCE CODE
https://github.com/SteveProXNA/LilEvelKnievelSMS

###### ROM HACKING
You can hack this ROM!  
Download and dump Skazka.sms into Hex Editor, e.g. HxD, and modify the bytes:
- 0x019E	Delay			Used to speed through any game delay.
- 0x019F	Invincible		Non-zero value enables invincibility.
- 0x01A0	Current XP		Non-zero sets current experience pts.
- 0x01A1	Current HP		Non-zero sets default healthy points.
- 0x01A2	Set Gold 		Non-zero sets current gold available.
- 0x01A3	Set Weapon 		Set value to 1 or 2 for stock else 0.
- 0x01A4	Set Armor		Set value to 1 or 2 for armor else 0.
- 0x01A5	Add Life		Set value to 1=Life otherwise 0=None.
- 0x01A6	Village Talk	Set value to 1=repeat villagers talk.
- 0x0053	Music Off		Set 0=Music to play otherwise silent.
- 0x0054	Sound Off		Set 0=Sound to play otherwise silent.
- 0x0055	Riffs Off		Set 0=Riffs to play otherwise silent.


###### LEVELS
- There are 3x levels: 1, 2, 3.  Maximum player HP = 30 and maximum player XP = 99

###### CREDITS
Extra special thanks to: sverx for [devkitSMS](https://github.com/sverx/devkitSMS) and Calindro for their 24/7 Tech Support!
<br />
Finally, thanks goes to: Maxim, Bock, Eruiz, Haroldook + Kusfo

###### CONTACT
- Blog:		http://steveproxna.blogspot.com
- Email:	steven_boland@hotmail.com
- Twitter:	[@SteveProXNA](http://twitter.com/SteveProXNA)