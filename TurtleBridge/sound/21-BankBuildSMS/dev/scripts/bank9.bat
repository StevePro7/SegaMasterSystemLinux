REM bank9
@echo off

cd ..
cd banks

"C:/Program Files/SDCC/bin/folder2c" bank9 bank9 9

"C:/Program Files/SDCC/bin/sdcc" --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK9 bank9.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts
