REM gfx		Commonly used gfx	not banked
@echo off

cd ..
cd ..
cd gfx

bmp2tile.exe raw/font_tiles.bmp -savetiles "font_tiles (tiles).psgcompr" -noremovedupes -planar -tileoffset 0 -savetilemap "font_tiles (tilemap).bin" -savepalette "font_tiles (palette).bin" -fullpalette -exit

cd ..
cd dev
folder2c ../gfx gfx

sdcc -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 gfx.c

del *.asm > nul
del *.lst > nul
del *.sym > nul

::cd ..
cd scripts