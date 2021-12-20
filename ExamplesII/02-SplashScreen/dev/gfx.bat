cd ..
cd gfx

bmp2tile.exe raw\splash.bmp -savetiles "splash (tiles).psgcompr" -removedupes -nomirror -planar -tileoffset 16 -savetilemap "splash (tilemap).stmcompr" -savepalette "splash (palette).bin" -fullpalette -exit

cd ..
cd dev
folder2c ..\gfx gfx

sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 gfx.c

del *.asm > nul; del *.lst > nul; del *.sym > nul