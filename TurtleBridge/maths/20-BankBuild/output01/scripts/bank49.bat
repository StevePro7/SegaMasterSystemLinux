REM bank49
@echo off

cd ..
cd banks

"C:/Program Files/SDCC/bin/sdcc" --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK49 bank49.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts