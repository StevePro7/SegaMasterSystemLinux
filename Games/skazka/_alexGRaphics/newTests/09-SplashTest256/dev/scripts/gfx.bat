@echo off
::gfx		Commonly used gfx	not banked

cd ..
cd content
cd gfx

:: Tiles
bmp2tile.exe raw/font_tiles.png -savetiles "font_tiles (tiles).psgcompr" -noremovedupes -planar -tileoffset 0  -savetilemap "font_tiles (tilemap).bin" -savepalette "background (palette).bin" -fullpalette -exit
bmp2tile.exe raw/splash.png -savetiles "splash (tiles).psgcompr" -removedupes -nomirror -planar -tileoffset 0  -savetilemap "splash (tilemap).bin" -savepalette "background (palette).bin" -fullpalette -exit
bmp2tile.exe raw/logo_big.png -savetiles "logo_big (tiles).psgcompr" -noremovedupes -planar -tileoffset 272  -savetilemap "logo_big (tilemap).bin" -savepalette "logo_big (palette).bin" -fullpalette -exit


cd ..
folder2c gfx gfx

sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gfx.c

if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul


cd ..
cd scripts