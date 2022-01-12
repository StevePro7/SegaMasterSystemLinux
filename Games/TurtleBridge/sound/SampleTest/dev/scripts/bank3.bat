REM gfx		Commonly used gfx	not banked
@echo off

cd ..
cd banks
cd bank3

bmp2tile.exe raw/font_tiles.bmp -savetiles "font_tiles (tiles).psgcompr" -noremovedupes -planar -tileoffset 0 -savetilemap "font_tiles (tilemap).bin" -savepalette "font_tiles (palette).bin" -fullpalette -exit

cd ..
cd dev
:: Convert.
folder2c bank3 bank3 3

:: Compile
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK3 bank3.c

del *.asm > nul
del *.lst > nul
del *.sym > nul

cd ..
cd scripts