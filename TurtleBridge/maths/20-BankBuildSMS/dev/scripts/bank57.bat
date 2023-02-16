REM bank57
@echo off

cd ..
cd banks
cd bank57
cd raw

"C:/Program Files/SDCC/bin/pcmenc" -rto 1 -dt1 12 -dt2 12 -dt3 423 Riff__Splash__Screen__07.wav
mv Riff__Splash__Screen__07.wav.pcmenc ../

cd ../..
"C:/Program Files/SDCC/bin/folder2c" bank57 bank57 57

"C:/Program Files/SDCC/bin/sdcc" --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK57 bank57.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts
