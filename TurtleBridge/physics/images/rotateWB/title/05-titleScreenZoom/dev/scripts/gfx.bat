@echo off
::gfx		Commonly used gfx	not banked

cd ..
cd content
cd gfx


:: Tiles
"C:\SEGA\bmp2tile043\bmp2tile.exe" raw/bggame_tiles.png -savetiles "bggame_tiles (tiles).psgcompr" -removedupes -nomirror -planar -tileoffset 0  -savetilemap "bggame_tiles (tilemap).bin" -savepalette "bggame_tiles (palette).bin" -fullpalette -exit
"C:\SEGA\bmp2tile043\bmp2tile.exe" raw/titlescreen.png -savetiles "titlescreen (tiles).psgcompr" -removedupes -nomirror -planar -tileoffset 64  -savetilemap "titlescreen (tilemap).bin" -savepalette "titlescreen (palette).bin" -fullpalette -exit

:: Sprites
"C:\SEGA\bmp2tile043\bmp2tile.exe" raw/skater01.png -savetiles "sprite_tiles01 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -savepalette "sprite_tiles (palette).bin" -fullpalette  -spritepalette -exit
"C:\SEGA\bmp2tile043\bmp2tile.exe" raw/skater02.png -savetiles "sprite_tiles02 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 48 -exit
"C:\SEGA\bmp2tile043\bmp2tile.exe" raw/skater03.png -savetiles "sprite_tiles03 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 96 -exit
"C:\SEGA\bmp2tile043\bmp2tile.exe" raw/skater04.png -savetiles "sprite_tiles04 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 144 -exit

cd ..
"C:\Program Files\SDCC\bin\folder2c.exe" gfx gfx

"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gfx.c

if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul


cd ..
cd scripts