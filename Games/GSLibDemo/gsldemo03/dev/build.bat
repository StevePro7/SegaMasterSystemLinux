::cd banks
sdcc -c -mz80 --constseg BANK2 bank2.c
sdcc -c -mz80 --constseg BANK3 bank3.c
::cd ..


sdcc -c -mz80 main.c

sdcc -o output.ihx -mz80 --no-std-crt0 --data-loc 0xC000 ^
-Wl-b_BANK2=0x4000 -Wl-b_BANK3=0x4000 ^
../crt0/crt0_sms.rel main.rel ^
../lib/SMSlib.lib ../lib/PSGlib.rel ../lib/GSLib.rel ^
bank2.rel bank3.rel

ihx2sms output.ihx output.sms

if exist "*.asm" del "*.asm" > nul; if exist "*.ihx" del "*.ihx" > nul; if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul

output.sms