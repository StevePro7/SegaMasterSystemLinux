@echo off

::cd devkit
::"C:/Program Files/SDCC/bin/sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _sms_manager.c
::"C:/Program Files/SDCC/bin/sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _snd_manager.c
::cd ..

echo Build
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c

echo Link
sdcc --debug  -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ../crt0/crt0_sms.rel main.rel ../lib/SMSlib.lib ../lib/PSGlib.lib devkit/_sms_manager.rel devkit/_snd_manager.rel

echo Run
ihx2sms output.ihx output.sms

:: Cleanup

::java -jar C:/SEGA/Emulicious/Emulicious.jar output.sms
output.sms