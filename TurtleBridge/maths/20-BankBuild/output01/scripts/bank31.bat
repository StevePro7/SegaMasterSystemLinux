REM bank31
@echo off

cd ..
cd banks

"C:/Program Files/SDCC/bin/sdcc" --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK31 bank31.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts
