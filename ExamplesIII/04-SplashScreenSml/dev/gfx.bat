cd ..
cd gfx

:: Tiles
bmp2tile.exe raw\font_tiles.bmp -savetiles "font_tiles (tiles).psgcompr" -removedupes -nomirror -planar -tileoffset 0 -savetilemap "font_tiles (tilemap).stmcompr" -savepalette "font_tiles (palette).bin" -fullpalette -exit

cd ..
cd dev

folder2c ../gfx gfx
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 gfx.c

if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul