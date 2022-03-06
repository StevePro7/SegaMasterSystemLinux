cd ..
cd gfx

:: Tiles
bmp2tile.exe raw\font_tiles.png -savetiles "font_tiles (tiles).psgcompr" -noremovedupes -planar -tileoffset 0  -savetilemap "font_tiles (tilemap).bin" -savepalette "font_tiles (palette).bin" -fullpalette -exit

cd ..
cd dev