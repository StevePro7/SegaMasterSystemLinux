@echo off
::gfx		Commonly used gfx	not banked

cd ..
cd content
cd gfx

:: Tiles
bmp2tile.exe raw/font_tiles.bmp -savetiles "font_tiles (tiles).psgcompr" -removedupes -planar -tileoffset  0 -savetilemap "font_tiles (tilemap).bin" -savepalette "font_tiles (palette).bin" -exit
bmp2tile.exe raw/Platform.bmp -savetiles "Platform (tiles).psgcompr" -removedupes -planar -tileoffset 64 -savetilemap "Platform (tilemap).bin" -savepalette "Platform (palette).bin" -fullpalette -exit


cd ..
folder2c gfx gfx

sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gfx.c

if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul


cd ..
cd scripts