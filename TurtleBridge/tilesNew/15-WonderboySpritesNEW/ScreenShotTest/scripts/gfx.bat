@echo off
::gfx		Commonly used gfx	not banked

::cd ..
::cd bin
::cd Windows
::cd x86
::cd Debug


:: Tiles
::"C:/SEGA/bmp2tile043/bmp2tile.exe" raw/bggame_tiles.png -savetiles "bggame_tiles (tiles).psgcompr" -removedupes -nomirror -planar -tileoffset 0  -savetilemap "bggame_tiles (tilemap).bin" -savepalette "bggame_tiles (palette).bin" -fullpalette
"C:/SEGA/bmp2tile043/bmp2tile.exe" raw/sprite_tiles.png -savetiles "sprite_tiles (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -savepalette "sprite_tiles (palette).bin" -fullpalette  -spritepalette -exit

::cd ..
::cd scripts