cd ..
cd gfx

:: Tiles
bmp2tile.exe raw\title.bmp -savetiles "title (tiles).psgcompr" -removedupes -nomirror -planar -tileoffset 0 -savetilemap "title (tilemap).stmcompr" -savepalette "title (palette).bin" -fullpalette -exit

bmp2tile.exe raw\font_tiles.png -savetiles "font_tiles (tiles).psgcompr" -noremovedupes -planar -tileoffset 96  -savetilemap "font_tiles (tilemap).bin" -savepalette "font_tiles (palette).bin" -fullpalette -exit

cd ..
cd dev

folder2c ../gfx gfx
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 gfx.c