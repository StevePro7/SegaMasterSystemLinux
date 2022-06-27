@echo off
::gfx		Commonly used gfx	not banked

cd ..
cd content
cd gfx

:: Tiles
bmp2tile.exe raw/font_tiles.png -savetiles "font_tiles (tiles).psgcompr" -noremovedupes -planar -tileoffset 0  -savetilemap "font_tiles (tilemap).bin" -savepalette "font_tiles (palette).bin" -fullpalette -exit
bmp2tile.exe raw/logo_big.png -savetiles "logo_big (tiles).psgcompr" -removedupes -planar -tileoffset 64  -savetilemap "logo_big (tilemap).bin" -savepalette "logo_big (palette).bin" -fullpalette -exit
::bmp2tile.exe raw/logo_small.png -savetiles "logo_small (tiles).psgcompr" -noremovedupes -planar -tileoffset 256  -savetilemap "logo_small (tilemap).bin" -savepalette "logo_small (palette).bin" -fullpalette -exit


cd ..
folder2c gfx gfx

sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gfx.c

if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul


cd ..
cd scripts