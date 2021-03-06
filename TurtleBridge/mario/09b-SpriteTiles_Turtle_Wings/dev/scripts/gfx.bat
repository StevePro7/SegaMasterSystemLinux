@echo off
::gfx		Commonly used gfx	not banked

cd ..
cd content
cd gfx

:: Tiles
bmp2tile.exe raw/wingdown.png -savetiles "wingdown (tiles).psgcompr" -noremovedupes -planar -tileoffset 64   -savetilemap "wingdown (tilemap).bin" -savepalette "wings (palette).bin" -fullpalette -exit
bmp2tile.exe raw/wingup.png -savetiles "wingup (tiles).psgcompr" -noremovedupes -planar -tileoffset 96  -savetilemap "wingup (tilemap).bin" -savepalette "wings2 (palette).bin" -fullpalette -exit


cd ..
folder2c gfx gfx

sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gfx.c

if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul


cd ..
cd scripts