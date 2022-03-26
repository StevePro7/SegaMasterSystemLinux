# Skazka SMS
Skazka game for the SMS Power! 2022 Competition.

###### RELEASE
Sunday, 27th March 2022

###### INTRO
Skazka is a Slavic RGP Adventure game originally written by Kirils Skrabe in BASIC for the Sega SC-3000 and posted to the SC-3000 Survivors [Facebook](https://bit.ly/3De1P4E) group on March 3rd 2022.  Original source code can be found [here](https://bit.ly/3tGV9J3).

###### PORTS
Saverio Russo ported the game to the SG-1000 using a custom "SC3K DevKit" which I believed is based on "Dear imGUI".  Here is the Sega Master System port using the devkitSMS.

###### TOOLS
- Programming:	devkitSMS
- Compiler		sdcc 3.6.9
- Languages:	C / Z80
- Visual Studio 2015
- Graphics:		BMP2Tile 0.43 / GIMP2 / paint.net
- Music:		Mod2Psg2 / VGM2PSG
- Assembler:	WLA-DX
- Emulators:	Emulicious / Fusion / Meka
- Debuggers:	VS Code Emulicious Debugger

###### SOURCE CODE
http://github.com/SteveProXNA/SkazkaSMS

###### ROM HACKING
You can hack this ROM!  
Download and dump CandyKid.sms into Hex Editor, e.g. HxD, and modify the bytes:
- 0x004E	Delay			Used to speed through any game delay.
- 0x004F	Invincible		Non-zero value enables invincibility.
- 0x0050	Current XP		Non-zero sets current experience pts.
- 0x0051	Current HP		Non-zero sets default healthy points.
- 0x0052	Set Gold 		Non-zero sets current gold available.
- 0x0053	Set Weapon 		Set value to 1 or 2 for stock else 0.
- 0x0054	Set Armor		Set value to 1 or 2 for armor else 0.
- 0x0055	Add Life		Set value to 1=Life otherwise 0=None.
- 0x0056	Village Talk	Set value to 1=repeat villagers talk.
- 0x0057	Music Off		Set 0=Music to play otherwise silent.
- 0x0058	Sound Off		Set 0=Sound to play otherwise silent.

###### ENEMIES
There are 5x different enemies in order of increasing difficulty: Razboynik, Hungry Wolf, Kikimora, Leshy, Baby Yaga
<br />
Defeat final boss Koschey to beat the game!

###### LEVELS
There are 3x levels: 1, 2, 3.  Maximum player HP = 30 and maximum player XP = 99

###### HINTS
Try to buy the weapon "Sword" or armor "Tegilay" with your initial gold before entering any forest fights
<br />
After completing each forest fight, ensure you "Rest" at the main screen to replenish all HP
<br />
In the shop, if you buy an item you already have then the gold will be deducted unconditionally so be aware - there is no validation!
<br />
Try to get "+1 Life" just in case you lose a fight or the final boss battle so you do not have to restart game
<br />
Maximize player HP + XP and get the best weapon "Axe" and the best armor "Kolchuga" before attempting to beat the boss.  
<br />
Once you fight the boss you cannot "Run away".  Try to fight boss once you have > 60 XP because your weapon and armor will be slightly more powerful!

###### CHEATS
On splash screen, hold joystick down and press button 2 to change default background color.
<br />
In forest screen, press fire2 to "Run away" without risking losing any HPs.

###### CREDITS
Extra special thanks to: sverx for [devkitSMS](https://github.com/sverx/devkitSMS) and Calindro for their 24/7 Tech Support!
<br />
Plus shout out to Mojon Twins in which I found lots of some cool sound effects [here](https://github.com/mojontwins/loves_the_sg1000)!
<br />
Finally, thanks goes to: Maxim, Martin, Ville Helin, Steve Snake, Bock + Kusfo

###### CONTACT
- Blog:		http://steveproxna.blogspot.com
- Email:	steven_boland@hotmail.com
- Twitter:	[@SteveProXNA](http://twitter.com/SteveProXNA)
