cd ..
cd gfx

:: Tiles
bmp2tile.exe raw/marilyn.png -savetiles "marilyn (tiles).psgcompr" -noremovedupes -planar -tileoffset 0  -savetilemap "marilyn (tilemap).bin" -savepalette "marilyn (palette).bin" -fullpalette -exit

cd ..
cd dev