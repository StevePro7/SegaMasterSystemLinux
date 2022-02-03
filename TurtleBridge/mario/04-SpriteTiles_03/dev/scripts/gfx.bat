@echo off
::gfx		Commonly used gfx	not banked

cd ..
cd content
cd gfx

:: Tiles
bmp2tile.exe raw/font_tiles.bmp -savetiles "font_tiles (tiles).psgcompr" -noremovedupes -planar -tileoffset 0  -savetilemap "font_tiles (tilemap).bin" -savepalette "font_tiles (palette).bin" -fullpalette -exit

:: Sprites
bmp2tile.exe raw/left01.png -savetiles "left01 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -savepalette "mario01 (palette).bin" -fullpalette  -spritepalette -exit
bmp2tile.exe raw/left02.png -savetiles "left02 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -exit
bmp2tile.exe raw/left03.png -savetiles "left03 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -exit
bmp2tile.exe raw/left04.png -savetiles "left04 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -exit

bmp2tile.exe raw/rght01.png -savetiles "rght01 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -exit
bmp2tile.exe raw/rght02.png -savetiles "rght02 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -exit
bmp2tile.exe raw/rght03.png -savetiles "rght03 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -exit
bmp2tile.exe raw/rght04.png -savetiles "rght04 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -exit

cd ..
folder2c gfx gfx

sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gfx.c

if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul


cd ..
cd scripts