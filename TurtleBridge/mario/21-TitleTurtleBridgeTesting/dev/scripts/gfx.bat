@echo off
::gfx		Commonly used gfx	not banked

cd ..
cd content
cd gfx

:: Tiles
bmp2tile.exe raw/B.bmp -savetiles "game_tilesB (tiles).psgcompr" -noremovedupes -planar -tileoffset 16  -savetilemap "game_tilesB (tilemap).bin" -savepalette "game_tilesB (palette).bin" -fullpalette -exit
bmp2tile.exe raw/D.bmp -savetiles "game_tilesD (tiles).psgcompr" -noremovedupes -planar -tileoffset 20  -savetilemap "game_tilesD (tilemap).bin" -savepalette "game_tilesD (palette).bin" -fullpalette -exit
bmp2tile.exe raw/E.bmp -savetiles "game_tilesE (tiles).psgcompr" -noremovedupes -planar -tileoffset 24  -savetilemap "game_tilesE (tilemap).bin" -savepalette "game_tilesE (palette).bin" -fullpalette -exit
bmp2tile.exe raw/G.bmp -savetiles "game_tilesG (tiles).psgcompr" -noremovedupes -planar -tileoffset 28  -savetilemap "game_tilesG (tilemap).bin" -savepalette "game_tilesG (palette).bin" -fullpalette -exit
bmp2tile.exe raw/I.bmp -savetiles "game_tilesI (tiles).psgcompr" -noremovedupes -planar -tileoffset 32  -savetilemap "game_tilesI (tilemap).bin" -savepalette "game_tilesI (palette).bin" -fullpalette -exit
bmp2tile.exe raw/L.bmp -savetiles "game_tilesL (tiles).psgcompr" -noremovedupes -planar -tileoffset 40  -savetilemap "game_tilesL (tilemap).bin" -savepalette "game_tilesL (palette).bin" -fullpalette -exit
bmp2tile.exe raw/R.bmp -savetiles "game_tilesR (tiles).psgcompr" -noremovedupes -planar -tileoffset 44  -savetilemap "game_tilesR (tilemap).bin" -savepalette "game_tilesR (palette).bin" -fullpalette -exit
bmp2tile.exe raw/T.bmp -savetiles "game_tilesT (tiles).psgcompr" -noremovedupes -planar -tileoffset 48  -savetilemap "game_tilesT (tilemap).bin" -savepalette "game_tilesT (palette).bin" -fullpalette -exit
bmp2tile.exe raw/U.bmp -savetiles "game_tilesU (tiles).psgcompr" -noremovedupes -planar -tileoffset 52  -savetilemap "game_tilesU (tilemap).bin" -savepalette "game_tilesU (palette).bin" -fullpalette -exit


cd ..
folder2c gfx gfx

sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gfx.c

if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul


cd ..
cd scripts