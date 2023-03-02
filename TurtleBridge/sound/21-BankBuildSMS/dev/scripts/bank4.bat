REM bank4
@echo off

cd ..
cd banks
::cd bank4

:: "C:/Program Files/SDCC/bin/folder2c" bank4 bank4 4

"C:/Program Files/SDCC/bin/sdcc" --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK4 bank4.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts
