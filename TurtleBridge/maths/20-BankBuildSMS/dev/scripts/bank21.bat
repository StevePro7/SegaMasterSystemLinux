REM bank21
@echo off

cd ..
cd banks
::cd bank21
::cd raw

::"C:/Program Files/SDCC/bin/pcmenc" -rto 1 -dt1 12 -dt2 12 -dt3 423 Riff__Splash__Screen__01.wav
::mv Riff__Splash__Screen__01.wav.pcmenc ../

::cd ../..
"C:/Program Files/SDCC/bin/folder2c" bank21 bank21 21

"C:/Program Files/SDCC/bin/sdcc" --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK21 bank21.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts
