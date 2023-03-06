REM bank22
@echo off

cd ..
cd banks
::cd bank22
::cd raw

::"C:/Program Files/SDCC/bin/pcmenc" -rto 1 -dt1 12 -dt2 12 -dt3 423 INSERT_WAV_FILE_HERE.wav
::mv INSERT_WAV_FILE_HERE.wav.pcmenc ../

::cd ../..
"C:/Program Files/SDCC/bin/folder2c" bank22 bank22 22

"C:/Program Files/SDCC/bin/sdcc" --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK22 bank22.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts
