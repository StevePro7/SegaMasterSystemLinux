@echo off
::gfx		Commonly used gfx	not banked

cd ..
cd content
cd gfx

:: Sprites
bmp2tile.exe raw/sprite_tiles.png -savetiles "sprite_tiles (tiles).psgcompr" -noremovedupes -nomirror -planar -tileoffset 0 -savepalette "sprite_tiles (palette).bin" -fullpalette  -spritepalette -exit


cd ..
folder2c gfx gfx

sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gfx.c

if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul


cd ..
cd scripts