::cd banks
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK2 bank2.c
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK3 bank3.c
::cd ..

::cd content
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 resources.c
::cd ..
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c

sdcc --debug  -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ^
../crt0/crt0_sms.rel main.rel ^
-Wl-b_BANK2=0x4000 -Wl-b_BANK3=0x4000 ^
../lib/SMSlib.lib ../lib/PSGlib.rel ../lib/GSLib.rel ^
bank2.rel bank3.rel ^
resources.rel

ihx2sms output.ihx output.sms

if exist "*.asm" del "*.asm" > nul; if exist "*.ihx" del "*.ihx" > nul; if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul

output.sms