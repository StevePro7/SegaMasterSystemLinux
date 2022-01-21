@echo off
::gfx		Commonly used gfx	not banked

cd ..
cd content
cd gfx

:: Tiles
::bmp2tile.exe raw/font_tiles.bmp -savetiles "font_tiles (tiles).psgcompr" -noremovedupes -planar -tileoffset 0   -savetilemap "font_tiles (tilemap).bin" -savepalette "font_tiles (palette).bin" -fullpalette -exit
bmp2tile.exe raw/game_tiles.png -savetiles "game_tiles (tiles).psgcompr" -noremovedupes -planar -tileoffset 0  -savetilemap "game_tiles (tilemap).bin" -savepalette "game_tiles (palette).bin" -fullpalette -exit

bmp2tile.exe raw/turtle00.png -savetiles "turtle00 (tiles).psgcompr" -noremovedupes -planar -tileoffset 128  -savetilemap "turtle00 (tilemap).bin" -savepalette "turtle00 (palette).bin" -fullpalette -exit
bmp2tile.exe raw/turtle01.png -savetiles "turtle01 (tiles).psgcompr" -noremovedupes -planar -tileoffset 144  -savetilemap "turtle01 (tilemap).bin" -savepalette "turtle01 (palette).bin" -fullpalette -exit
bmp2tile.exe raw/turtle02.png -savetiles "turtle02 (tiles).psgcompr" -noremovedupes -planar -tileoffset 160  -savetilemap "turtle02 (tilemap).bin" -savepalette "turtle02 (palette).bin" -fullpalette -exit
bmp2tile.exe raw/turtle03.png -savetiles "turtle03 (tiles).psgcompr" -noremovedupes -planar -tileoffset 176  -savetilemap "turtle03 (tilemap).bin" -savepalette "turtle03 (palette).bin" -fullpalette -exit



cd ..
folder2c gfx gfx

sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gfx.c

if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul


cd ..
cd scripts