@echo off

cd ..
cd banks
cd bank2

bmp2tile.exe raw/splash.bmp -savetiles "splash (tiles).psgcompr" -removedupes -nomirror -planar -tileoffset 64 -savetilemap "splash (tilemap).stmcompr" -exit

cd ..
folder2c bank2 bank2 2

sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK2 bank2.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts
