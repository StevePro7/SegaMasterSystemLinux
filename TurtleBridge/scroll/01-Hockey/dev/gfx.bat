cd ..
cd gfx

:: Tiles
bmp2tile.exe raw/hockey.png -savetiles "hockey (tiles).psgcompr" -noremovedupes -planar -tileoffset 0  -savetilemap "hockey (tilemap).bin" -savepalette "hockey (palette).bin" -fullpalette -exit

cd ..
cd dev