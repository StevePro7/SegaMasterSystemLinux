::@echo off
echo Build
sdcc  -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c

echo Link
sdcc --debug -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ^
crt0_sms.rel main.rel SMSlib.lib

echo Run
ihx2sms output.ihx output.sms

:: Cleanup
if exist "*.asm" del "*.asm" > nul
if exist "*.ihx" del "*.ihx" > nul
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul
::if exist "*.noi" del "*.noi" > nul
if exist "*.sym" del "*.sym" > nul

java -jar C:/SEGA/Emulicious/Emulicious.jar output.sms
::output.sms