cd ..
cd gfx

bmp2tile.exe raw\splash.png -savetiles "splash (tiles).psgcompr" -removedupes -nomirror -planar -tileoffset 0 -savetilemap "splash (tilemap).stmcompr" -savepalette "splash (palette).bin" -fullpalette -exit

cd ..
cd dev