REM bank2
@echo off

cd ..
cd banks

"C:/Program Files/SDCC/bin/folder2c" bank2 bank2 2

"C:/Program Files/SDCC/bin/sdcc" --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK2 bank2.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts
