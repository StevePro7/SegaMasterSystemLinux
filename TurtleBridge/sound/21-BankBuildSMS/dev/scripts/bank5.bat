REM bank5
@echo off

cd ..
cd banks

"C:/Program Files/SDCC/bin/folder2c" bank5 bank5 5

"C:/Program Files/SDCC/bin/sdcc" --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK5 bank5.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts
