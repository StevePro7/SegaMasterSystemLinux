@echo off
sdcc -c -mz80 main.c
sdcc -o output.ihx -mz80 --data-loc 0xC000 --no-std-crt0 crt0_sms.rel main.rel inlib.lib SMSlib.lib
ihx2sms output.ihx output.sms

if exist "*.asm" del "*.asm" > nul; if exist "*.ihx" del "*.ihx" > nul; if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul

java -jar C:/SEGA/Emulicious/Emulicious.jar output.sms
::C:/SEGA/Fusion/Fusion.exe output.sms