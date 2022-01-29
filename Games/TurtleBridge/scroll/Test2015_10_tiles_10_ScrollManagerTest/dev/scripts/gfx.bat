@echo off
::gfx		Commonly used gfx	not banked

cd ..
cd content
cd gfx

:: Tiles
bmp2tile.exe raw/font_tiles.bmp -savetiles "font_tiles (tiles).psgcompr" -noremovedupes -planar -tileoffset 0  -savetilemap "font_tiles (tilemap).bin" -savepalette "font_tiles (palette).bin" -fullpalette -exit

:: Sprites
bmp2tile.exe raw/back_tiles.png -savetiles "back_tiles (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -savepalette "back_tiles (palette).bin" -fullpalette  -spritepalette -exit


cd ..
folder2c gfx gfx

sdcc -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gfx.c

if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul


cd ..
cd scripts