@echo off
::gfx		Commonly used gfx	not banked

cd ..
cd content
cd gfx

:: Tiles
bmp2tile.exe raw/turtleAA_32x24.png -savetiles "turtleAA_32x24 (tiles).psgcompr" -noremovedupes -planar -tileoffset 64   -savetilemap "turtleAA_32x24 (tilemap).bin" -savepalette "wings (palette).bin" -fullpalette -exit
bmp2tile.exe raw/turtleBB_32x24.png -savetiles "turtleBB_32x24 (tiles).psgcompr" -noremovedupes -planar -tileoffset 96  -savetilemap "turtleBB_32x24 (tilemap).bin" -savepalette "wings2 (palette).bin" -fullpalette -exit


cd ..
folder2c gfx gfx

sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gfx.c

if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul


cd ..
cd scripts