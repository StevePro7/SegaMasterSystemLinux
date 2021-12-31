@echo off
::gfx		Commonly used gfx	not banked

cd ..
cd content
cd gfx

:: Tiles
bmp2tile.exe raw/font_tiles.bmp -savetiles "font_tiles (tiles).psgcompr" -noremovedupes -planar -tileoffset 0  -savetilemap "font_tiles (tilemap).bin" -savepalette "font_tiles (palette).bin" -fullpalette -exit

:: Sprites
bmp2tile.exe raw/f00_cent.png -savetiles "left01 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -savepalette "mario01 (palette).bin" -fullpalette  -spritepalette -exit
bmp2tile.exe raw/f01_left.png -savetiles "left02 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -exit
bmp2tile.exe raw/f02_rght.png -savetiles "left03 (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -exit

cd ..
folder2c gfx gfx

sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gfx.c

if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul


cd ..
cd scripts