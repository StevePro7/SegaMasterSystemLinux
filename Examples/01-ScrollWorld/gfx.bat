cd ..
cd gfx

bmp2tile.exe raw\gotris.bmp -savetiles "splash (tiles).psgcompr" -removedupes -nomirror -planar -tileoffset 128 -savetilemap "splash (tilemap).stmcompr" -savepalette "splash (palette).bin" -fullpalette

cd ..
cd dev